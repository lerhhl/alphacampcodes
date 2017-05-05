=begin

Exercise 6: Remove Duplicates from Sorted Array
Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
Do not allocate extra space for another array, you must do this in place with constant memory.

For example,
Given input array nums = [1,1,2],
Your function should return length = 2, with the first two elements of nums being 1 and 2
respectively. It doesn't matter what you leave beyond the new length.

# @param {Integer[]} nums
# @return {Integer}
=end

def remove_duplicates(nums)
	uniq_nums = nums.uniq!
	if uniq_nums == nil
		return false
	else
		return uniq_nums.length
	end
end

#Test conditions
p remove_duplicates([1,1,2]) #return length = 2 (because new array = [1,2])
p remove_duplicates([-1,-1,2]) #return length = 2 (because new array = [-1,2])
p remove_duplicates([-1,2]) #return length = 2 (because new array = [-1,2])