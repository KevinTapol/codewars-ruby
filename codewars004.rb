# Opposite number
# Parameters or Edge Cases
    # inputs can be integers or floats
# Return
    # return the opposite of the number input find (additive inverse)
# Examples
    # 1: -1
    # 14: -14
    # -34: 34
# Pseudo Code
    # multiply the input by -1 and return the product

# My answer
def opposite(num)
    return num * -1
end

# Best Practices and Most Clever
# Not using parentheses and returning -input which is the same math as multiplying by -1
def opposite n
    -n
end

# testing for nil or non value inputs
def opposite(num)
    num.nil? ? nil : -num
   end

# using ternary operators and checking for absolute values
def opposite x
    x > 0 ? -x : x.abs
end

# converting the input into a string, creating an array to split on the "-" if it exists create a new array and push the x if the "-" does not exist, convert the asnwer back into a string, convert that string into a float and finally return that float as the asnwer
def opposite(input)
    input_s = input.to_s
    input_f = input
    
    if input_f > 0
       output_s = "-" + input_s
    elsif input_f < 0
       input_a = input_s.split("")
       output_a = Array.new
       input_a.each do |x|
          if x != "-"
             output_a.push(x)
          end
       end
       output_s = output_a.join("")
    else
       input_s = output_s
    end
    
    output = output_s.to_f
    
    return output
end

# using *= for multiply and reassignment
def opposite(x)
    x *= -1
end