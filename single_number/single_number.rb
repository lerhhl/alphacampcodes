=begin

Exercise 8: Single Number II
Given an array of integers, every element appears three times except for one, which appears exactly once. Find that single one.
Note:
Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

# @param {Integer[]} nums
# @return {Integer}

=end

def single_number(nums)
	nums.sort!	#sort the array first
	length = nums.length
	for i in 0..(length - 1)
		if i == 0	#for first element
			if nums[i] < nums[i + 1]
				return nums[i]
			end
		elsif i == (length - 1)	#for last element
			if nums[length - 1] > nums[length - 2]
				return nums[length - 1]
			end
		else
			if (nums[i] > nums[i - 1]) && (nums[i] < nums[i + 1])
				return nums[i]
			end
		end
	end
	return false
end

#Testing conditions
p single_number([0,1,1,1]) #result 0
p single_number([0,0,0,1]) #result 1
p single_number([-1,2,-1,-1]) #result 2
p single_number([-1,-1,-2,-1]) #result -2
p single_number([-1,-1,-1,3,3,2]) #result 2