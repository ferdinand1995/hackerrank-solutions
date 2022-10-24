#!/bin/ruby

require 'json'
require 'stringio'
require 'time'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    return DateTime.strptime(s, "%I:%M:%S %P").strftime("%H:%M:%S")
end

s = "07:05:45PM"
puts "The value of x is #{timeConversion(s)}"
