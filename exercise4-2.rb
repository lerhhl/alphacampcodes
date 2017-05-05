=begin

Exercise 4: Valid Anagram
Given two strings s and t, write a function to determine if t is an anagram of s.

Given assumption:
The string contains only lowercase alphabets

=end

def is_anagram(s,t)
	return s.split(//).sort == t.split(//).sort
end

#Test conditions
p is_anagram("anagram","nagaram") #return true
p is_anagram("rat","car") #return false
p is_anagram("rat","care") #return false
p is_anagram("rather","care") #return false
p is_anagram("rather","rathee") #return false