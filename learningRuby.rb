# https://www.youtube.com/watch?v=t_ispmWmdjY&ab_channel=freeCodeCamp.org
# 1:14:57
# puts "info" does a new line with console log print "info" does same line
# characterName = "John"
# characterAge = "35"
# puts ("Bruh named " + characterName)
# flaws = nil
# nil means no value
# use \ to escape quotes and print in side
# puts "Bruh named \" bruh"
# use \n to print on new line
# puts "Bruh named \n bruh"
# phrase = "John Doe"
# puts phrase[0]
# .upcase() everything to uppercase
# .downcase() everything to lowercase
# .strip() removes white space before and after a string
# .length() returns number of characters
# .include? "Doe" returns true because phrase includes "Doe" in "John Doe"
# access first character by using [] and index location first index starts at 0
# phrase[0] will return "J"
# phrase[0,3] will return "Joh" final index is exclusive! using ranges
# phrase.index("J") will return 0 giving you the index of the character
# 2**3 is 2 to the power of 3
# modulus works the same 4 % 2 will return 0 for no remainder 3 % 2 will return 1 for a remainder

# to convert to string the method is .to_s
# num = 36
# puts ("my fav num " + num.to_s)
# .abs() absolute value
# .round() will round to nearest whole number
# .ceil() will round up
# .floor() will round down
# Math.sqrt(num) will return the square root of 6
# if you use math with only integers then you will get an integer back rounded to the neartest whole number
# puts 10 / 7 will return 1 while puts 10.0 / 7 will return 1.4285714285714286
# .chomp() will remove new line
# .to_i converts into an integer
# .to_f converts into a float

# run a ruby file by using ruby filename.rb
# ruby automatically converts inputs into a string that is why the following code returns the numbers concatenated instead of the sum of the user inputs
# puts "Enter your name: "
# # gets is how you get user input
# name = gets 
# puts ("Hello " + name)
# puts "Enter a number: "
# num1 = gets.chomp()
# puts "Enter another number "
# num2 = gets.chomp()
# puts (num1 + num2)

# puts "Enter a number: "
# num1 = gets.chomp()
# puts "Enter another number "
# num2 = gets.chomp()

# puts (num1.to_i + num2.to_i)
# this will return the sum of the integers instead of concatenated strings of inputs

# puts "Enter a number: "
# num1 = gets.chomp()
# puts "Enter another number "
# num2 = gets.chomp()

# puts (num1.to_f + num2.to_f)
# this will return a float

# you can add the method to the input
# puts "Enter a number: "
# num1 = gets.chomp().to_f
# puts "Enter another number "
# num2 = gets.chomp().to_f

# puts (num1 + num2)
# friends = Array["Kevin", "Karen", "Oscar"]
# puts friends.sort() will sort the items in the array to "Karen" "Kevin" "Oscar"
# YOU CANNOT USE .sort() ON AN ARRAY WITH MULTIPLE DATA TYPES!
# puts friends.reverse() will reverse the array
# puts friends.length() will return the number of items in the array
# puts friends.include? "Kevin" will return true because "Kevin is in the friends array"
# puts friends[0] returns "Kevin"
# puts friends[-1] returns last item in the array which in this case is "Oscar"
# puts friends[0,2] includes the first index range but excludes the 2nd index range returning items at index 0 and 1

# reassign index items 
# friends[0] = "Dwight"
# puts friends

# declare a new empty array
# friends = Array.new
# friends[0] = "Josh"
# friends[5] = "Holly"
# puts friends

# Hash key value pairs separated by => instead of :
# states = {
#     "Pennsylvania" => "PA",
#     "New York" => "NY",
#     "Oregon" => "OR"
# }
# puts states["New York"] will returh "NY"
# not sure what : without "" does but it still works as a key value pair. You can also use numbers etc
# states = {
#     :Pennsylvania => "PA",
#     "New York" => "NY",
#     "Oregon" => "OR"
# }

# puts states[:Pennsylvania]

# Methods method block
def sayhi
    puts "Hello User"
end

# call method
sayhi