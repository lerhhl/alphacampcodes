=begin

Exercise 7: Ugly Number
Write a program to check whether a given number is an ugly number. Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
Note that 1 is typically treated as an ugly number.

# @param {Integer} num
# @return {Boolean}

=end

def is_ugly(num)
	if num <= 0
		return false
	end
	#check if after dividing by 2 or 3 or 5, final factor is 1, if yes, it is ugly number
	while num % 2 == 0
		num /= 2
	end
	while num % 3 == 0
		num /= 3
	end
	while num % 5 == 0
		num /= 5
	end
	if num == 1
		return true
	else
		return false
	end
end

#Testing conditions
p is_ugly(1) #True
p is_ugly(2) #True
p is_ugly(3) #True
p is_ugly(4) #True
p is_ugly(5) #True
p is_ugly(14) #False
p is_ugly(-1) #False
p is_ugly(0) #False
