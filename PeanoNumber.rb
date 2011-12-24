#!/usr/bin/env ruby

	def main()
	
		x = Succ.fromInteger(3)
		y = Succ.fromInteger(2)
		print(x.to_s + " + " + y.to_s + " = " + x.add(y).to_s)
	end
