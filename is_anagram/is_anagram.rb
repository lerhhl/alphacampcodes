=begin

Exercise 4: Valid Anagram
Given two strings s and t, write a function to determine if t is an anagram of s.

Given assumption:
The string contains only lowercase alphabets

=end

def is_anagram(s,t)
	if s.length != t.length # to skip the hashtable forming if the two strings have different length
		return false
	end
	s_hashtable = create_table(s)
	t_hashtable = create_table(t)
	return s_hashtable == t_hashtable
end

def create_table(x) # to create hashtable for each string
	table = {}
	x_arr = x.split(//) # to convert a string to array
	x_arr_uniq = x_arr.uniq # to remove duplicate in array
	x_arr_uniq.each do |n| # to form a hashtable of key:value
		count = x_arr.count(n)
		table[n] = count
	end
	return table
end

#Test conditions
p is_anagram("anagram","nagaram") #return true
p is_anagram("rat","car") #return false
p is_anagram("rat","care") #return false
p is_anagram("rather","care") #return false
p is_anagram("rather","rathee") #return false