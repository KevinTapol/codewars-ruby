=begin
Remove First and Last Character

Parameters or Edge Cases
    inputs will be strings of at the least 2 characters in length
Return
    return the input string without the first and last characerers
Examples
    describe "Solution" do
      it "Fixed tests" do
        Test.assert_equals(remove_char('eloquent'), 'loquen')
        Test.assert_equals(remove_char('country'), 'ountr')
        Test.assert_equals(remove_char('person'), 'erso')
        Test.assert_equals(remove_char('place'), 'lac')
        Test.assert_equals(remove_char('ok'), '')
      end
    end
Pseudo Code
    use the .slice() method Keep in mind that for ruby the final slice value is INCLUSIVE meaning we must subtract by 2

=end

# My Answer
def remove_char(s)
    return s.slice(1, s.length - 2)
end

# puts remove_char("place")

# Best Practices and Most Clever
# ... Is used to declare a Range object (from 1 to, but excluding, -1 ). Since s[-1] refers to the last character of the string, then s[1...-1] is interpreted as the range of characters going from s[1] upto s[-1]. In contrast, s[1..-1] (2 dots) would also include s[-1] in the range. You can read more about it here: https://ruby-doc.org/core-2.2.0/Range.html
def remove_char(s)
    s[1...-1]
end

# [Inclusive...Exclusive]
# [Inclusive..Inclusive]
def remove_char(s)
    s[1..-2]
end

# using .chop
def remove_char(s)
    s.chop.reverse.chop.reverse
  end

# clever to set the chars to empty strings
def remove_char(s)
    s[0],s[-1] = '',''
    s
end

# converting the string into an array then using bracket slicing notation and finally converting back into a string
def remove_char(s)
    s.split('')[1..-1][0...-1].join
end

# A cleaner version of my answer
def remove_char(s)
    s[1,s.length-2]
end

# array methods
def remove_char(s)
    #your code here
    word = s.split('')
    word.pop
    word.shift  
    word.join
end

# while loop
# declare an empty string
# declare a variable condition and increment by 1
def remove_char(s)
  
    word = ""
    i=1 
    
    while i < s.length - 1
    char = s[i]
    word = word + char
    i += 1
    end
  
  return word
  
  end

# regex?
def remove_char(s)
    s.gsub(/^\w|\w\b/, "")
end

# with a bang
def remove_char(s)
    s.slice!(1..-2)
end

# using .size()
def remove_char(s)
    s.slice(1, s.size - 2)
end