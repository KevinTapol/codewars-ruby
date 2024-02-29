=begin
Grasshopper - Summation

Parameters or Edge Cases
    The number will always be a positive integer greater than 0.

Return
    return the sum from 0 to the input number
Examples
    describe "summation" do
    it "should return the correct total" do
      Test.assert_equals(summation(1), 1)
      Test.assert_equals(summation(8), 36)
    end
end
Pseudo Code
    declare an empty array
    loop through and append to the empty array the value num decreasing num by 1 each time until num is no longer greater than 0
    sum the array and return it
=end

# My Answer
# def summation(num)
#     arr = []
#     while num > 0
#         arr.push(num)
#         num -= 1
#     end
#     return arr.sum
# end

# puts summation(8) 

# Best Practices 
# creating an array with (start..stop) where the stop is inclusive then sum the array
def summation(num)
    return (1..num).sum
end

# Most Clever 
# Gauss Theorem
def summation(num)
    num * (num + 1) / 2
end

# using .reduce() to sum
def summation(num)
	(1..num).reduce(:+)
end

# using inject
def summation(num)
    (1..num).inject(:+)
end

# one liner loop
def summation(num)
    ret = 0
    (1..num).each {|x| ret += x}
    return ret
end

# .to_a
def summation(num)
    a = (1..num).to_a
    total = a.inject(:+)
     return total
end

# using recursion
def summation(num)
    if num == 0
      0
    else
      num + summation(num-1)
    end
end

# similar to my answer but using a do loop
def summation(num)

    arr = []
  
  for a in 1..num do
    arr.push(a)
  end
  
  return arr.sum
  
end