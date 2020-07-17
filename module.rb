module Speak
    def speak(sound)
      puts "#{sound}"
    end
end
  
  class GoodDog
    include Speak
  end
  
  class HumanBeing
    include Speak
  end
  
  # puts "---GoodDog ancestors---"
  # puts GoodDog.ancestors
  # puts ''
  # puts "---HumanBeing ancestors---"
  # puts HumanBeing.ancestors
  # Creating a module for mixing
  module Automobile
    def Inform(name, year)
      @name = name
      @year = year
      puts "The name of the car is #{name}, design in the year #{year}"
    end
  
  end
  #Creating an instance of Class

  class Car 
    include Automobile
  end

  # volvo = Car.new
  # volvo.Inform("Volvo", 2013)
 
#Getter and Setter
 #GoodDog Class

 class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight}lbs and is #{self.height}cm tall."
  end

 def what_is_self
  self
 end

end

sparky = GoodDog.new("Sparky",45, 68) 
puts sparky.info



#Exercise

class MyCar
  attr_accessor :color
  attr_reader :year
  def initialize(year,color,model)
    @year = year
    @color = color
    @model= model
    @speed = 0 
  end

  def speed_up(number)
    @speed = numberspeed_up
    puts "Step on it man, you're accelerating to #{number}mph"
  end
  def brake(number)
    @speed -= number
    puts "Braking!!, you're deccelerating by #{number}mph"
  end
  def shot_off
    @speed  =0
    puts "Parking!!!"
  end
  def spray_paint(c)
    self.color = c
    puts "Car paint modifed to #{c} successfully"
  end
  def gen_info
    "Designed in the year: #{@year},my color is: #{@color}, my model is: #{@model}"
  end
end
# volvo = MyCar.new(2018,"Blue", "velvet")
# puts volvo.gen_info
#  volvo.year 
#  volvo.spray_paint("lawngreen")





 