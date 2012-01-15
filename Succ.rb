class Succ 
	attr_accessor :pred
	
	def self.fromInteger(num)
		#print( "fromInteger: " + num.to_s + "\n")
		if num == 0
		#print("fromInteger num is zero\n")
			return Zero.new()
		else
			#print("fromInteger else = " + num.to_s + "\n")
			result = Succ.fromInteger(num -1)
			#print("fromInteger - "+result.class.to_s + "\n")
			return Succ.of(result)
		end
	end
	
	def initialize(pred)
		@pred = pred
	end
	
	def to_s()
		#print("to_s for Succ entered\n")
		return "succ(" + @pred.to_s() + ")"
	end
	
	def self.of(peanoNumber)
		return Succ.new(peanoNumber)
	end
	
	def succ
		return Succ.of(self)
	end
	
	def + peanoNumber
		return add(peanoNumber)
	end
	
	def add(peanoNumber)
		subtotal = pred.add(peanoNumber)
		return subtotal.succ
	end

end