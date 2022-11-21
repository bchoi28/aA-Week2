require_relative "room"

class Hotel

    attr_reader :rooms

    def initialize(name, hash)  #hash = {"basement"=>4, "attic"=>3}
        @name = name
    
        @rooms = Hash.new
        hash.each do |k,v|  #"basement", 4
            @rooms[k] = Room.new(v)
        end
    end

    def name
        @name.split(" ").map(&:capitalize).join(" ")
    end

    def room_exists?(room_name)
        @rooms.has_key?(room_name)
    end

    def check_in(person, room_name)
        if self.room_exists?(room_name)
            if @rooms[room_name].add_occupant(person) == true
                p "check in successful"
            else
                p "sorry, room is full"
            end
        else
            p "sorry, room does not exist"
        end
    end

    def has_vacancy?
        self.rooms.each_value do |value|
            if !value.full?
                return true
            end
       end
       false
    end

    def list_rooms
        self.rooms.each do |k,v|
            puts k + rooms[k].available_space.to_s
        end
    end





end
