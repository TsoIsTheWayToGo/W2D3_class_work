class Array

  def my_uniq 
    hash = Hash.new(0)
    result = []

    self.each do |el|
      hash[el] += 1
    end 

    hash.keys
  end 

  def two_sum
    result = []
    i = 0
    while i < length - 1
      j = i + 1
      while j < length 
        result << [i,j] if self[i] + self[j] == 0
        j += 1
      end
      i += 1
    end
    result
  end 
end 

def my_transpose(arr)
  result = [] 

  i = 0
  while i < arr.length 
    temp = []
    j = 0
    while j < arr[i].length
      temp << arr[j][i]
      j += 1
    end 
    result << temp 
    i += 1
  end

  result
end

def stock_picker(arr)
  buy_day = nil
  sell_day = nil
  profit_margin = 0
  arr.each_with_index do |buy,i|
    arr.each_with_index do |sell,j|
      profit = sell - buy
      if profit > profit_margin && j > i
        buy_day = i
        sell_day = j
        profit_margin = profit
      end 
    end
  end  
  if buy_day==nil
    return "Do not buy"
  end
    
  "You should buy on day #{buy_day + 1} and sell on day #{sell_day+1}"

end

