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
    expect([].my_transpose).to be_empty
  end
  # it "returns a transposed array" do 
    
  # end
end 