class Car
	def hit_accelator
		puts "speed increased"
	end
	def hit_brake
		puts "Clutch applied"
		puts "brake applied"
	end
	def hit_topgear
		puts "Clutch applied"
		puts "Top gear applied"
	end
end

class Audi < Car
	def hit_brake
		puts "Audi class Clutch applied"
		puts "Audi class brake applied"
	end
	def abs
		puts "ABS applied"
	end
	def sun_roof
		puts "sun roof applied"
	end
end

c = Car.new
a = Audi.new

c.hit_topgear #clutch applied , top gear applied
a.hit_brake #Audi class Clutch applied , Audi class brake applied
a.hit_accelator #speed increased
c.sun_roof #undefined method error
