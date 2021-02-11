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

