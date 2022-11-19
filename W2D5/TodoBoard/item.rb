class Item

    def self.valid_date?(date_string)
        parts = date_string.split("-")
        return false if parts[0].length != 4
        return false if parts[1].length != 2
        return false if parts[2].length != 2

        (1..12).all? {|ele|parts[1].include?()}
    end









end