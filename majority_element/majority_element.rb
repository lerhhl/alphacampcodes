=begin 

Exercise 5: Majority Element
Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

Given assumption:
1) the array is non-empty
2) the majority element always exist in the array ( size of array >2 )

# @param {Integer[]} nums
# @return {Integer}

=end

def  majority_element(nums)
	table = {}
	nums.each do |n| # to create a table of keys, values for each unique num in array
		if table.key?(n)
			table[n] += 1 #if key already exist in the table, increase its value by 1
		else
			table[n] = 1 #initialise a new key value
		end
	end
	return table.key(table.values.max) #using the max value in the table to find its respective key
end

#Test conditions
p majority_element([1,1,2]) #return 1
p majority_element([0,0,2]) #return 0
p majority_element([1,1,2,3]) #return 1
p majority_element([11,11,2,3]) #return 11
p majority_element([11,11,-2,-2,-2,3]) #return -2