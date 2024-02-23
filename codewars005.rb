# Reversed Strings
# Parameters or Edge Cases
# Return
    # return the reverse of the string passed into it
# Examples
    # 'world'  =>  'dlrow'
    # 'word'   =>  'drow'
# Pseudo Code
    # use the .reverse method on the input string

# My Answer and Best Practices
# .reverse is not limited to only arrays in ruby but is also used on strings
def solution(str)
    return str.reverse
end

# Most Clever 
# not using .reverse
# using .split("") to create an array of strings without a delimiter with a do loop
def solution(str)
    str_array = str.split("")
    i = 0
    j = str.length - 1
    (str.length/2).floor.times do
      str_array[i], str_array[j] = str_array[j], str_array[i]
      i += 1
      j -= 1
    end
    str_array.join("")
  end

# testing for nil cases of no inputs
def solution(str=nil)
    str.reverse if !str.nil?
 end

#  curious how there is a ! at the end of the method
def solution(str)
    str.reverse!
  end
  
  solution('world')

# using split to create an array inject to change the order
def solution(str)
    str.split('').inject('') { |s, b| b + s }
  end

# while loop
def solution(str)
    left_index = 0
    right_index = (str.length - 1)
    while left_index < right_index
      str[left_index], str[right_index] = str[right_index], str[left_index]
      left_index += 1
      right_index -= 1
    end
    return str
  end