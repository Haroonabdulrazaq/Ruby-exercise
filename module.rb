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

  volvo = Car.new
  volvo.Inform("Volvo", 2013)
 
#Getter and Setter

class GoodDog
  attr_accessor :name 
  def initialize(name)  #name is an instance variable, It keeps track of state of object
    @name =name
  end

  def speak     #Speak is an instance method, It keeps track of the behavior of an object 
    puts "#{@name} says Arf!"    #It also exposes behavior of a class to object
  end

  def getter  #Getter instance Method
    puts @name
  end

  def setter=(name)  #Setter instance Method
    @name = name

  end



end

sparky = GoodDog.new("Sparky")
sparky.speak
sparky.getter
sparky.setter = "Fido"
sparky.getter

