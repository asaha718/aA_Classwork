require "byebug"
# O(n^2)
def bad_two?(arr, target)

    arr.each_with_index do |ele, i|
        (i+1...arr.length-1).each do |i2|
            result = arr[i] + arr[i2]
            return true if result== target 
        end
    end
    false
end

#O(nlogn)
arr = [0, 1, 5, 7]
bad_two?(arr, 10) # => should be false
bad_two?(arr, 6) # => should be true

def okay_two_sum?(arr, target)
    arr= arr.sort
    i=0
    j= arr.length - 1

    while i < j
        case (arr[i] + arr[j]) <=> target
        when 0 
            return true
        when -1
            i+=1
        when 1
            j-=1
        end
    end

    false
end


okay_two_sum?(arr, 10) # => should be false
okay_two_sum?(arr, 6)


#O(n)
def two_sums(arr, target)
   debugger
    complements= { }

    arr.each do |ele|
        if complements[target- ele]== true
            return true
        end
        complements[ele] = true
    end
    false
end

# p two_sums(arr, 10)
p two_sums(arr, 6)