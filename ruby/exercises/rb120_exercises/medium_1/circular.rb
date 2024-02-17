# class CircularQueue
#   attr_accessor :q, :last_position
#   attr_reader :arr, :order

#   def initialize(num)
#     @arr = ([nil]*num)
#     @last_position = 0
#     @order = []
#   end
  
#   def oldest_pos
#     order.compact.first
#   end

#   def dequeue
#     ans = 0
#     if order.empty?
#       return nil
#     else
#       order.each_with_index do |x, idx|
#         if x.nil?
#           next
#         else
#           order[idx]=nil
#           ans = x
#           break
#         end
#       end
#     end
#     ans
#   end

#   def enqueue(num)
#     order << num

#     if arr.include?(nil)
#       arr[last_position]=num
#       self.last_position= (@last_position + 1)
#     else
#       arr[oldest_pos]=num
#     end
#   end
# end

# States: @number of existance, @position of placement, @position of removal, 
# @last position, @most recent position that turned to nil, 

# queue: an array of x amount of nils. Holds the numbers that are passed in.
# Order: an array. When a number is added to the queue, it is also pushed into the order. When `dequeue` is called, the number at the front of the order is removed from the order and removed from the queue. Numbers inside the order are objects, that contain all the states neccessary to solve the problem.

class Num_Object
  attr_accessor :number, :age

  def initialize(number, age)
    @number = number
    @age = age
  end

end

class CircularQueue
  attr_accessor :buffer

  @@age = 0

  def initialize(num)
    @buffer = ([]<<nil)*num
  end

  def dequeue
    if buffer.all?{|x| x.nil?}
      nil
    end
  end

  def number_creation
    num  
  end

  def enqueue(num)
    num = Num_Object.new(num, @@age)

    

    @@age += 1
  end

end

queue = CircularQueue.new(3)
p queue.buffer
puts queue.dequeue == nil

queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1


# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# p queue
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil

# # queue = CircularQueue.new(4)
# # puts queue.dequeue == nil

# # queue.enqueue(1)
# # queue.enqueue(2)
# # puts queue.dequeue == 1

# # queue.enqueue(3)
# # queue.enqueue(4)
# # puts queue.dequeue == 2

# # queue.enqueue(5)
# # queue.enqueue(6)
# # queue.enqueue(7)
# # puts queue.dequeue == 4
# # puts queue.dequeue == 5
# # puts queue.dequeue == 6
# # puts queue.dequeue == 7
# # puts queue.dequeue == nil