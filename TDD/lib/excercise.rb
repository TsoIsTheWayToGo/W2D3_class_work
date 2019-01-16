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
