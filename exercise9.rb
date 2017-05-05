=begin

Exercise 9: Best Time to Buy and Sell Stock II
Say you have an array for which the ith element is the price of a given stock on day i.
Design an algorithm to find the maximum profit. You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times). However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).

# @param {Integer[]} prices
# @return {Integer}

=end

def max_profit(prices)
	#initialisation
   	profit = 0
	buy_prices = []
	sum_buy_prices = 0
	mean_buy_prices = 0
	sell_prices = []
	sum_sell_prices = 0
	mean_sell_prices = 0
	length = prices.length

	#to find the buying prices
	for i in 0..(length - 2)	
		if i == 0	#for first element
			if prices[i] < prices[i + 1]
				buy_prices.push(prices[i])
			end
		else
			if (prices[i] < prices[i - 1]) && (prices[i] <= prices[i + 1])
				buy_prices.push(prices[i])
			end
		end
	end

	#to find the selling prices
	for i in 1..(length - 1)
		if (i == (length - 1)) && (prices[i] > prices[i - 1])	#for last element
			sell_prices.push(prices[i])
		else 
			if (prices[i] > prices[i - 1]) && (prices[i] >= prices[i + 1])
				sell_prices.push(prices[i])
			end
		end		
	end

	#to check whether there is (no. of buying prices) > (no. of selling prices)
	if buy_prices.length > sell_prices.length 
		buy_prices.pop[-1]
	end

	#to calculate the profit
	profit = (mean(sell_prices) - mean(buy_prices)) * buy_prices.length
	return profit
end

def mean(x_prices)
	#initialisation
	sum_prices = 0

	#to find the mean of the prices
	if x_prices.length > 0
		x_prices.each do |n|
			sum_prices += n
		end
		mean_sum_prices = sum_prices / x_prices.length
	else
		mean_sum_prices = 0
	end

	return mean_sum_prices
end

#Testing conditions
p max_profit([3,4,1,2]) #result 2
p max_profit([1,3,2]) #result 2
p max_profit([2,1,3]) #result 2
p max_profit([3,2,1]) #result 0
p max_profit([3,2,1,2]) #result 1
p max_profit([3,2,1,1]) #result 0