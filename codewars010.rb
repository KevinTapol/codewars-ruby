=begin
Find the smallest integer in the array

Parameters or Edge Cases
    the input array will not be empty\
    the integers can be negative
Return
    return the smallest integer from an input array
Examples
    Given [34, 15, 88, 2] your solution will return 2
    Given [34, -345, -1, 100] your solution will return -345

describe "Basic tests" do
  it "should pass fixed tests" do
    Test.assert_equals(find_smallest_int([78,56,232,12,8]), 8)
    Test.assert_equals(find_smallest_int([78,56,-2,12,8]), -2)
    Test.assert_equals(find_smallest_int([-78,56,-2,12,8]), -78)
    Test.assert_equals(find_smallest_int([-8]), -8)
    Test.assert_equals(find_smallest_int([1,2,3,4,5,6,7,8,9,10]), 1)
    Test.assert_equals(find_smallest_int([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10]), -10)
    Test.assert_equals(find_smallest_int([-78,56,232,12,8]), -78)
    Test.assert_equals(find_smallest_int([78,56,-2,12,-8]), -8)
    Test.assert_equals(find_smallest_int([-8,-3]), -8)
    Test.assert_equals(find_smallest_int([-3,-8]), -8)
  end
end

Psuedo Code
    use the .min on the input array and return the answer
=end

# My Answer, Best Practices and Most Clever
def find_smallest_int(arr)
    return arr.min
end

# puts find_smallest_int([34, 15, 88, 2])

# using .sort and .take()
def find_smallest_int(arr)
    arr.sort.take(1)[0]
    #take array and sort it by low to high 
    #grab index 0 < that will be the lowest
    
      #your code here
end

# using .sort! and grabbing the first value
def find_smallest_int(arr)
    arr.sort!
    arr[0]
end

# using .reduce to iterate through and compare values
def find_smallest_int(arr)
    arr.reduce do |acc,el|
      if el < acc
        acc = el
      else
        acc
      end  
    end
  end

#   same idea but using .each
def find_smallest_int(arr)
    candidate = +1.0 / 0.0
      arr.each do |num|
        if num < candidate
          candidate = num
        end
      end
    candidate
    end

# setting initial value to first index, iterating through the array starting at the next value and ending inclusively at the length of the array with .each loop comparing values and reassigning min if the value is less than the current assign variable. Finally returning the variable outside of the loop
def find_smallest_int(arr)
    min = arr.first
    arr[1..arr.length].each do |el|
      min = el < min ? el : min
    end
    
    min
  end

# brute force while loop
def find_smallest_int(arr)
    lowest_num = arr[0]
    idx = 0
    while idx < arr.length
      if arr[idx] < lowest_num
        lowest_num = arr[idx]
      end
      idx += 1
    end
    return lowest_num
  end

# clean version of brute force loop
def find_smallest_int(arr)
    min = arr[0]
    arr.each do |value|
      if value < min
        min = value
      end
    end
    min
  end