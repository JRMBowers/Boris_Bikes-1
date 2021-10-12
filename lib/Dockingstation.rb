require '/Users/jbower34/Desktop/Projects/Boris_Bikes-1/lib/bike.rb'
class Dockingstation
    attr_reader :bike

    def initialize
        @bike_count = 1
    end

    def release_bike
        fail 'No bikes available' unless @bike
        @bike
    end

    def dock(bike)
        @bike = bike
    end 

end