# Convert a Number to a String!

# Parameters or Edge Cases
# Return
    # the input number as a string
# Examples
    # 123  --> "123"
    # 999  --> "999"
    # -100 --> "-100"
# Pseudo Code

# My Answer and Best Practices
# using the method to string of .to_s
def number_to_string(num)
    return num.to_s
end

# Most Clever
# using string interpolation of "#{}"
def numberToString(num)
    "#{num}"
  end

# using String() object method?
def numberToString(num)
    String(num)
  end

# funny way to solve declaring an array, if else, while loop and .reverse
NUMS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

def numberToString(num)
  
  string = ""
  sign = ""
  if num < 0
    num *= -1
    sign = "-"
  end
  
  while(num > 10)
    string += NUMS[num % 10]
    num /= 10
  end
  string += NUMS[num % 10]
  
  sign + string.reverse
end