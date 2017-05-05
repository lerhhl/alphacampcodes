=begin

Exercise 2: Contains Duplicate
Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

# @param {Integer[]} nums
# @return {Boolean}

=end

def contains_duplicate (nums)
	new_nums = nums.uniq
	if nums.length > new_nums.length
		return true
	else
		return false
	end
end

#Test conditions
p contains_duplicate ([1,1,4,3,12]) #True
p contains_duplicate ([5,1,2,3]) #False
p contains_duplicate ([3]) #False
p contains_duplicate ([-3]) #False
p contains_duplicate ([2,3,4,5,6,4]) #True