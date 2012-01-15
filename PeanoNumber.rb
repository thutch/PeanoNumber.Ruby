#!/usr/bin/env ruby
$LOAD_PATH << File.dirname(__FILE__)
require 'Succ'
require 'Zero'

		x = Succ.fromInteger(3)
		y = Succ.fromInteger(2)
		result = x + y
		print(x.to_s + " + " + y.to_s + " = " + result.to_s + "\n")

