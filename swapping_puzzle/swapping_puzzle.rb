def swapping_puzzle (num)
	blank_index = 0
	final_blank_index = 0
	init_stat = []
	cur_stat = []
	x_no_move = false
	o_no_move = false
	count_move = 0

	#Create initial puzzle table
	if num.even? == false
		blank_index = ((num + 1) / 2) - 1
	else
		blank_index = (num / 2) - 1
	end
	for i in 0..(blank_index - 1) do
		init_stat = init_stat.push("O")
	end
	init_stat = init_stat.push("-")
	for i in (blank_index + 1)..(num - 1) do
		init_stat = init_stat.push("X")
	end
	cur_stat = init_stat
	print_table(cur_stat)

	#Create final puzzle table
	final_stat = init_stat.reverse
	final_blank_index = blank_index

	# Main program starts here
	while (cur_stat != final_stat) do
		x_no_move, o_no_move = false, false

	#Check any next movable "O"
		while (o_no_move == false) do
	#"O" can move forwards?
			if (blank_index == cur_stat.length - 1) && (cur_stat[blank_index - 1] == "O")
				cur_stat[blank_index], cur_stat[blank_index - 1] = cur_stat[blank_index - 1], cur_stat[blank_index]
				print_table(cur_stat)
				blank_index = cur_stat.index("-")
				count_move += 1
				o_no_move = false
			elsif (blank_index - 1 >= 0) && (cur_stat[blank_index - 1] == "O") && (cur_stat[blank_index + 1] != cur_stat[blank_index - 1])
				cur_stat[blank_index], cur_stat[blank_index - 1] = cur_stat[blank_index - 1], cur_stat[blank_index]
				print_table(cur_stat)
				blank_index = cur_stat.index("-")
				count_move += 1				
				o_no_move = false	
			elsif (blank_index > final_blank_index) && (cur_stat[blank_index - 1] == "O")
				cur_stat[blank_index], cur_stat[blank_index - 1] = cur_stat[blank_index - 1], cur_stat[blank_index]
				print_table(cur_stat)
				blank_index = cur_stat.index("-")
				count_move += 1
				o_no_move = false
	#"O" can jump forwards?				
			elsif (blank_index == cur_stat.length - 1) && (cur_stat[blank_index - 2] == "O")
				cur_stat[blank_index], cur_stat[blank_index - 2] = cur_stat[blank_index - 2], cur_stat[blank_index]
				print_table(cur_stat)	
				blank_index = cur_stat.index("-")
				count_move += 1
				o_no_move = false
			elsif (blank_index - 2 >= 0) && (cur_stat[blank_index - 2] == "O") && (cur_stat[blank_index + 1] != cur_stat[blank_index - 2])
				cur_stat[blank_index], cur_stat[blank_index - 2] = cur_stat[blank_index - 2], cur_stat[blank_index]
				print_table(cur_stat)	
				blank_index = cur_stat.index("-")
				count_move += 1
				o_no_move = false
			elsif (blank_index > final_blank_index) && (cur_stat[blank_index - 2] == "O")
				cur_stat[blank_index], cur_stat[blank_index - 2] = cur_stat[blank_index - 2], cur_stat[blank_index]
				print_table(cur_stat)	
				blank_index = cur_stat.index("-")
				count_move += 1
				o_no_move = false				
			else
				o_no_move = true
			end
		end

	#Check any next movable "X"
		while (x_no_move == false) do

	#"X" can move forwards?
			if (blank_index == 0) && (cur_stat[blank_index + 1] == "X")
				cur_stat[blank_index], cur_stat[blank_index + 1] = cur_stat[blank_index + 1], cur_stat[blank_index]
				print_table(cur_stat)	
				blank_index = cur_stat.index("-")
				count_move += 1	
				x_no_move = false					
			elsif (blank_index + 1 >= 0) && (cur_stat[blank_index + 1] == "X") && (cur_stat[blank_index - 1] != cur_stat[blank_index + 1])
				cur_stat[blank_index], cur_stat[blank_index + 1] = cur_stat[blank_index + 1], cur_stat[blank_index]
				print_table(cur_stat)	
				blank_index = cur_stat.index("-")
				count_move += 1
				x_no_move = false
			elsif (blank_index < final_blank_index) && (cur_stat[blank_index + 1] == "X")
				cur_stat[blank_index], cur_stat[blank_index + 1] = cur_stat[blank_index + 1], cur_stat[blank_index]
				print_table(cur_stat)	
				blank_index = cur_stat.index("-")
				count_move += 1
				x_no_move = false
	#"X" can jump forwards?				
			elsif (blank_index == 0) && (cur_stat[blank_index + 2] == "X")
				cur_stat[blank_index], cur_stat[blank_index + 2] = cur_stat[blank_index + 2], cur_stat[blank_index]
				print_table(cur_stat)	
				blank_index = cur_stat.index("-")
				count_move += 1
				x_no_move = false				
			elsif (blank_index + 2 >= 0) && (cur_stat[blank_index + 2] == "X") && (cur_stat[blank_index - 1] != cur_stat[blank_index + 2])
				cur_stat[blank_index], cur_stat[blank_index + 2] = cur_stat[blank_index + 2], cur_stat[blank_index]
				print_table(cur_stat)	
				blank_index = cur_stat.index("-")
				count_move += 1
				x_no_move = false
			elsif (blank_index < final_blank_index) && (cur_stat[blank_index + 2] == "X")
				cur_stat[blank_index], cur_stat[blank_index + 2] = cur_stat[blank_index + 2], cur_stat[blank_index]
				print_table(cur_stat)
				blank_index = cur_stat.index("-")
				count_move += 1
				x_no_move = false				
			else
				x_no_move = true
			end
		end
	end
	print "\n Total number of moves #{count_move} \n"
end	

def print_table (stat)
	print ("\n")
	print (stat).join(",")
	print ("\n")
	print ("-"*stat.length*2)
	print("\n")
end

input = 0
while (input % 2 == 0) || (input < 5)
	print ("Please enter an odd number starting from 5. (eg. 5 or 7 or 9)")
	input = gets.chomp.to_i
end
swapping_puzzle(input)
