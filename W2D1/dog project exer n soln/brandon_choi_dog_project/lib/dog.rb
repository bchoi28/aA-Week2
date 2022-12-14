# class Dog
#   def initialize(name, breed, age, bark, favorite_foods)
#     @name = name
#     @breed = breed
#     @age = age
#     @bark = bark
#     @favorite_foods = favorite_foods
#   end

#   def name
#     @name
#   end

#   def breed
#     @breed
#   end

#   def bark
#     if @age > 3
#       return @bark.upcase
#     else
#       return @bark.downcase
#     end
#   end

#   def age
#     @age
#   end

#   def age=(new_age)
#     @age = new_age
#   end

#   def favorite_foods
#     @favorite_foods
#   end

#   def favorite_food?(food_item)
#     @favorite_foods.map(&:downcase).include?(food_item.downcase)
#   end
# end

# dog = Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])

#   def favorite_food?(food_item)
#     @favorite_foods.map(&:downcase).include?(item.downcase)
#   end


class Dog

  attr_reader :name, :breed, :age, :favorite_foods
  attr_writer :age

  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  def age=(number)
    @age = number
  end

  def bark
    if self.age > 3
      return @bark.upcase
    else
      return @bark.downcase
    end
  end

  def favorite_food?(food_item)
    @favorite_foods.map(&:downcase).include?(food_item.downcase)
  end


end