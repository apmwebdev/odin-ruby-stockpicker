def stock_picker(stocks)
  result = [0, 0]
  stocks.each_with_index do |stock, day_1_index|
    i = day_1_index + 1
    while i < stocks.length do
      if stocks[i] - stocks[day_1_index] > stocks[result[1]] -
        stocks[result[0]]
        result[0] = day_1_index
        result[1] = i
      end
      i += 1
    end
  end
  puts result.to_s
end

input_stocks = [17,3,6,9,15,8,6,1,10,18]

stock_picker(input_stocks)