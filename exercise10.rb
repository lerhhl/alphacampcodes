=begin

Exercise 10: Search Insert Position
Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

Given assumption
No duplicates in the array.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

=end

def search_insert(nums, target)
	if nums.index(target) == nil
		nums.push(target)
		nums.sort!
		return nums.index(target)
	else
		return nums.index(target)
	end
end

#Testing conditions
p search_insert([1,3,5,6],5)	#result 2
p search_insert([1,3,5,6],2)	#result 1
p search_insert([1,3,5,6],7)	#result 4
p search_insert([1,3,5,6],0)	#result 0
p search_insert([1,3,5,6],-1)	#result 0