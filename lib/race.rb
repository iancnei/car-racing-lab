require_relative 'car'

class Race

	attr_accessor :cars

  	def initialize
  		@cars = [Car.new, Car.new]
  		@cars.each do |car| 
  			car.accelerate(rand(99) + 1)
  		end
  	end

  	def winner
  		if @cars[0].speed > @cars[1].speed
  			return @cars[0]
  		else
  			return @cars[1]
  		end
  	end

  	def loser
  		if winner == @cars[0]
  			return @cars[1]
  		else
  			return @cars[0]
  		end
  	end

end
