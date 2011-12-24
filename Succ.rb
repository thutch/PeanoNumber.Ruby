class Succ < PeanoNumber
	attr_accessor :pred
	
	def initialize(pred)
		@pred = pred
	end
	
	def to_s()
		return "succ(" + pred.to_s + ")"
	end
	
	def self.of(peanoNumber)
		return Succ.new(peanoNumber)
	end
	
	def succ
		return Succ.of(self)
	end
	
	def add(peanoNumber)
		return @pred.add(peanoNumber)
	end

end