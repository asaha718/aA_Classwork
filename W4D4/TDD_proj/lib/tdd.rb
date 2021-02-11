#Remove dups
#Array has a uniq method that removes duplicates from an array. It returns the unique elements in the order in which they first appeared:
#Write your own version of this method called my_uniq; it should take in an Array and return a new array.

def my_uniq(array)
  new_arr = []

  array.each do |ele|
    new_arr << ele if !new_arr.include?(ele)
  end

  new_arr 
end


#Two sum
#Write a new Array#two_sum method that finds all pairs of positions where the elements at those positions sum to zero.
#NB: ordering matters. We want each of the pairs to be sorted smaller index before bigger index. We want the array of pairs to be sorted "dictionary-wise":

class Array

  def two_sum
    pairs = []

    self.each_index do |i|
      (i + 1...self.length).each do |j|
        pairs << [i, j] if self[i] + self[j] == 0 
      end
    end

    pairs 
  end

end


