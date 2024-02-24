# Return Negative

# Parameters or Edge Cases
    # inputs will be numbers and can be negative, positive or 0
# Return
    # return input if it is negative else return the negative value of the input 
# Examples
    # makeNegative(1);  # return -1
    # makeNegative(-5); # return -5
    # makeNegative(0);  # return 0
# Pseudo Code
    # either do an if else ternary if the value is less than or equal to 0 then return the number else multiply by -1 and return the product
    # or take the absolute value of the input and multiply by -1 and return the product

# My Answer using ternary
def make_negative(num)
    num <= 0 ? num : -num
end

# My answer using .abs and multiplying by -1
def make_negative(num)
    return num.abs * -1
end

# Best Practices and Most Clever
def makeNegative(num)
	-num.abs
end

# if else
def makeNegative(num)
    #   Enter Code Here
      if num<0
        return num
      else
        return -num
      end
    end

# .positive? similar to usign a ternary with a method
def makeNegative(num)
    num.positive? ? -num : num
   end

# .negative? 
def make_negative(num)
    num.negative? ? num : -num
  end

# clever if negative then you'll get a positive and multiply by -1 if positive then you'll get positive and multiply by -1
def makeNegative(num)
    (num * num) ** 0.5 * -1
  end