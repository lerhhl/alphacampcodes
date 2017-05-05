=begin

Exercise 1: Power of Two
Given an integer, write a function to determine if it is a power of two.

# @param {Integer} n
# @return {Boolean}

=end

def is_power_of_two(n)
	if n <= 0
		return false
	end
	while n%2 == 0
		n /= 2
	end

	return n == 1 
end

#Test conditions
p is_power_of_two(4) #True
p is_power_of_two(10) #False
p is_power_of_two(0) #False
p is_power_of_two(1) #True
p is_power_of_two(-2) #False
