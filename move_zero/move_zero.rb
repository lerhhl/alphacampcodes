=begin

Exercise 3: Move Zeros
Given an array nums, write a function to move all 0's to the end of it while maintaining the
relative order of the non-zero elements.

Note:
1. You must do this in-place without making a copy of the array.
2. Minimize the total number of operations.

 @param {Integer[]} nums
 @return {Void} Do not return anything, modify nums in-place instead.
 
=end

def move_zero(nums)
	num_zero = nums.count(0)
	if num_zero > 0
		nums.delete(0)
		for i in 1..num_zero
			nums.push(0)
		end
	else
		return nums
	end
	return nums
end

#Test conditions
p move_zero ([0,1,0,3,12]) #[1,3,12,0,0]
p move_zero ([0]) #[0]
p move_zero ([1,0,2,3]) #[1,2,3,0]
p move_zero ([1,2,3,4]) #[1,2,3,4]
p move_zero ([1,-2,0,3,4]) #[1,2,3,4]