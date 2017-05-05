def mean(x_prices)
	sum_prices = 0
	x_prices.each do |n|
		sum_prices += n
	end
	return sum_prices
end

p mean([1,2])