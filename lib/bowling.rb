class Bowling
	attr_reader :score

	def initialize 
		@score=0
	end	

	def hit(pin_code)
		@score += pin_code
	end
end
