require 'excercise'
# require 'rspec'
RSpec.describe "Array" do 
  describe "#my_uniq" do 
    it "returns an array of unique elements" do
      expect([1,2,3,1,1,3].my_uniq).to eq([1,2,3,1,1,3].uniq)
    end

    it "can handle strings" do
      expect(["A",'B','B','C'].my_uniq).to eq(["A",'B','B','C'].uniq)
    end

    it "doesn't modify the original array" do
      t = [1,2,2,3]
      g = t.my_uniq
      expect(t).to_not eq(g)
    end
  end

  describe "#two_sum" do 
    it "returns an array of indexes whose elements add to 0" do 
      arr = [-1,0,2,-2,1]
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end 

    it "every item in the array is a duple" do
      arr = [-1,0,2,-2,1].two_sum 
      t = arr.map { |el| el.count == 2 } 
      expect(t).to eq([true,true])
    end 

    it "does not elements" do
      arr = [-1,0,2,-2,1]
      expect(arr.two_sum).to_not eq([[-1, 1], [2, -2]])
    end
  end 
  
end

describe "#my_transpose" do 
  it "returns an empty array if given an empty array" do
    expect(my_transpose([])).to be_empty
  end

  it "returns a transposed array" do 
    t = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
    g = [[0, 3, 6],[1, 4, 7],[2, 5, 8]]
    expect(my_transpose(t)).to eq(g)
  end
end 

describe "stock_picker" do 
  it "outputs the most profitable day to buy and sell" do
    str = "You should buy on day 1 and sell on day 4"
    expect(stock_picker([5,10,15,20])).to eq(str)
  end 

  it "does not sell before you buy" do 
    expect(stock_picker([20,15,10,5])).to eq("Do not buy")
  end 

end 