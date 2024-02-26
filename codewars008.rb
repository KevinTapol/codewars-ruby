=begin
String repeat

Parameters or Edge Cases
    string can contain any characters
    nums will be integers
    can strings be empty or nil?
Return
    returns the string s repeated exactly n times
Examples
    6, "I"     -> "IIIIII"
    5, "Hello" -> "HelloHelloHelloHelloHello"
Pseudo Code
    declare an integer set to 0
    declare an empty string to concatenate to
    using a while loop where the declared integer is less than the input concatenate the input string to the empty string and set the empty string equal to the result
    outside of the while loop return the string result
=end

# My Answer
def repeat_str (n, s) 
    # declare an integer set to 0
    num = 0
    # declare an empty string to concatenate to
    string = ""
    # using a while loop where the declared integer is less than the input concatenate the input string to the empty string and set the empty string equal to the result
    while num < n
        string += s
        num += 1
    end
    # outside of the while loop return the string result
    return string
end

# puts(repeat_str(6, "I"))

# Best Practices and most clever
# good to know that you can multiply strings by a number to concatenate the string the multiplied number times
def repeat_str (n, s)
    s*n
end

# similar to my answer but using a .times loop
def repeat_str (n, s)
    rtn=''
    n.times do |i|
      rtn+=s
    end
    return rtn
end

# using string interpolation
# after multiplication, conver the result to a string using string interpolation
def repeat_str (n, s)
	"#{s * n}"
end

# array methods
def repeat_str (n, s)

    array = []  # create an array to store result.
    n.times do |x|
    array = array.push(s)
    end
    array = array.join
    
    return array
    
end

# .map
def repeat_str (n, s)
    (1..n).map{|i| s}.join()
end