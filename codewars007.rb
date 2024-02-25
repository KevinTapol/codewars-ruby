=begin
Sum of positive

Parameters or Edge Cases
    inputs will be an array of integer that can be negative or positive
    if there is nothing to sum, the sum is default to 0
Return
    return the sum of all the positive numbers in the input array, if there are no positive numbers return 0
Examples
    [1,-4,7,12] => 1 + 7 + 12 = 20
Pseudo Code
    declare a variable sum and set it equal to 0
    loop through the array and if the value is greater than 0, add it to the variable sum
    outside of the loop, return the variable sum
=end

# My Answer
def positive_sum(arr)
    # declare a variable sum and set it equal to 0
    sum = 0
    # loop through the array and if the value is greater than 0, add it to the variable sum
    for num in arr
        if num > 0
            sum += num
        end
    end
    # outside of the loop, return the variable sum
    return sum
end

# puts positive_sum([1,-4,7,12])

# Best Practices and Most Clever
def positive_sum(arr)
    arr.select{|x| x > 0}.reduce(0, :+)
  end

# using .select() .positive? and .sum
def positive_sum(arr)
    arr.select(&:positive?).sum
  end

# .select() .positive? .inject()
def positive_sum(arr)
    arr.select(&:positive?).inject(0,:+)
  end

# using .each do to loop
def positive_sum(arr)
	sum = 0
  arr.each do |number|
  	if number > 0
    	sum += number
      end
  end
  sum
end

# using .select where num is greater than 0 .reduce()
def positive_sum(arr)
	arr.select { |n| n > 0 }.reduce(0,:+)
end

# same as above but using .positive? instead of greater than 0
def positive_sum(arr)
    arr.select(&:positive?).reduce(0, :+)
  end

# using .reduce directly on the input array with ternary
def positive_sum(arr)
    arr.reduce(0) { |a,b| a += (b > 0 ? b : 0) }
  end

# .sum() directly on the input array with a nested ternary if the input is more than 0
def positive_sum(arr)
    arr.sum(0){|x| x > 0 ? x : 0}
  end

# .reject to remove values less than or equal to 0
def positive_sum(arr)
    arr.reject{|x| x <= 0 }.sum
  end

# same idea as above with .reject but using negative?
def positive_sum(arr)
    arr.reject(&:negative?).sum
  end