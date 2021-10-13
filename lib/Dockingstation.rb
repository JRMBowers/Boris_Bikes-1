require '/Users/jbower34/Desktop/Projects/Boris_Bikes-1/lib/bike.rb'

# class Array
#     def full?
#         if self.count >= 20 
#             return true
#         else 
#             return false
#         end 
#     end 
# end 


class Dockingstation
    DEFAULT_CAPACITY = 20
    attr_reader :bike,:capacity

    def initialize(capacity=DEFAULT_CAPACITY)
        @bike = []
        @capacity = capacity
    end

    def release_bike
        fail 'No bikes available' if empty?
        @bike.pop
    end

    def dock(bike)
        fail 'Bike dock full' if full?
        @bike << bike
    end 

    def full?
      @bike.count >= @capacity
    end 

    def empty?
      @bike.empty?
    end 


end