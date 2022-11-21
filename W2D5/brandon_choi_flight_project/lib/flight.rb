# class Flight
#     require_relative "passenger"

#     attr_reader :passengers

#     def initialize(flight_number, capacity)
#         @flight_number = flight_number
#         @capacity = capacity
#         @passengers = []
#     end

#     def full?
#         if @passengers.length == @capacity
#             return true
#         elsif @passengers.length < @capacity
#             return false
#         end
#     end

#     def board_passenger(passenger)
#         if passenger.has_flight?(@flight_number) && !self.full?
#             @passengers << passenger
#         end
#     end

#     def list_passengers
#         @passengers.map(&:name)
#     end

#     def []idx
#         @passengers[idx]
#     end

#     def <<(passenger)
#         board_passenger(passenger)
#     end


# end







require_relative "passenger"

class Flight

    attr_reader :passengers

    def initialize(flight_num, capacity)
        @flight_number = flight_num
        @capacity = capacity
        @passengers = Array.new
    end

    def full?
        return true if @passengers.length == @capacity
        false
    end

    def board_passenger(passenger)
        if !self.full? && passenger.has_flight?(@flight_number)
            @passengers << passenger
        end
    end

    def list_passengers
        @passengers.map(&:name)
    end

    def [](idx)
        @passengers[idx]
    end

    def <<(passenger)
        self.board_passenger(passenger)
    end



end