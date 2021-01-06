class Calc
	def addition(a,b)
		sum = a + b
		puts sum
	end

	def subtraction(a,b)
		sub_value = a - b
		puts sub_value
	end

	def multipication(a,b)
		multi_value = a*b
		puts multi_value
	end
	def division(a,b)
		divide_value = a%b
		puts divide_value
	end
end

cal = Calc.new
cal.addition(6,3)
cal.subtraction(6,3)
cal.multipication(6,3)
cal.division(6,3)

