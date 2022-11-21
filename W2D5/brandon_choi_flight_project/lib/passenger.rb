# class Passenger

#     attr_reader :name

#     def initialize(name)
#         @name = name
#         @flight_numbers = []
#     end

#     def has_flight?(string)
#         if @flight_numbers.map(&:downcase).include?(string.downcase)
#             return true
#         else
#             return false
#         end
#     end

#     def add_flight(string)
#         if !self.has_flight?(string)
#             @flight_numbers << string.upcase 
#         else
#             @flight_numbers
#         end
#     end


# end














class Passenger

    attr_reader :name

    def initialize(name)
        @name = name
        @flight_numbers = Array.new
    end

    def has_flight?(flight_num)
        @flight_numbers.map(&:downcase).include?(flight_num.downcase)
    end

    def add_flight(flight_num)
        if !self.has_flight?(flight_num)
            @flight_numbers << flight_num.upcase
        end
    end
end