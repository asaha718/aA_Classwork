require 'tdd.rb'

describe "my_uniq" do 
  array = [1, 2, 1, 3, 3]
  
  it "removes duplicates from an array" do 
    expect(my_uniq(array)).to eq([1, 2, 3])
  end

  it "returns a new array" do 
    expect(my_uniq(array).object_id != my_uniq(array).object_id).to eq(true)
  end   
end

describe Array do 
  describe "#two_sum" do 
    array = [-1, 0, 2, -2, 1]
    
    it "returns pair of indices that sum to 0" do
      expect(array.two_sum).to eq([[0, 4], [2,3]])
    end
  end
end

describe "my_transpose" do
  rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
  it "converts between row and column matrix" do 
    expect(my_transpose(rows)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end 

end

describe "stock_picker" do 
  prices = [4,6,4,7,5]
  it "returns a pair of indices that produce the max difference" do 
    expect(stock_picker(prices)).to eq([0,3])
  end
end
