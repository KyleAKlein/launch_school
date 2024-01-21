=begin
# + Inside a preschool there are children, teachers, class assistants, a principle, janitors, and cafeteria workers.

# + Both teachers and assistants can help a student with schoolwork.

# + Both teachers and assistants can watch them on the playground. 

# + A teacher teaches.

# + Assistants helps kids with any bathroom emergencies.

# + Kids themselves can learn.

# + Kids can play.

# + A teacher and principle can supervise a class.

# + Only the principle has the ability to expel a kid.

# + Janitors have the ability to clean.

# + Cafeteria workers have the ability to serve food.

# + Children, teachers, class assistants, principles, janitors and cafeteria workers all have the ability to eat lunch.

=end

module Eatable
  def eat
    "I ate food!"
  end
end

module Schoolable
  def schoolwork_help
    "Here's how you do this."
  end
end

module Watchable
  def watch
    "I watch over the playground."
  end
end

module Supervisable
  def supervise
    "I supervise the class!"
  end
end 

class Children
  include Eatable
  def learn
    "I learned something!"
  end

  def play
    "I played a game!"
  end
end

class Teachers
  include Eatable
  include Schoolable
  include Watchable 
  include Supervisable
  def teach
    "I teach the class!"
  end
end

class ClassAssistant
  include Eatable
  include Schoolable  
  include Watchable
  
  def bathroom_help
    "I can help with a bathroom emergency."
  end
end

class Principle
  include Eatable
  include Supervisable
  
  def expel
    "You're expelled!"
  end
end

class Janitor
  include Eatable
  def clean
    "I cleaned up!"
  end
end

class CafeteriaWorker
  include Eatable
  def serve
    "I serve food."
  end
end