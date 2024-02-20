# Even or Odd
# Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
# Parameters or Edge Cases
    # inputs will be intergers and can be negative
# Return
    # "Even" if the input integer is even "Odd" if the input integer is odd
# Examples

# describe "Example tests" do
#     it 'even_or_odd(1) should return "Odd"' do
#       expect(even_or_odd(1)).to eq("Odd")
#     end
#     it 'even_or_odd(2) should return "Even"' do
#       expect(even_or_odd(2)).to eq("Even")
#     end
#     it 'even_or_odd(-1) should return "Odd"' do
#       expect(even_or_odd(-1)).to eq("Odd")
#     end
#     it 'even_or_odd(-2) should return "Even"' do
#       expect(even_or_odd(-2)).to eq("Even")
#     end
#     it 'even_or_odd(0) should return "Even"' do
#       expect(even_or_odd(0)).to eq("Even")
#     end
#   end
# Pseudo Code
    # if the integer is even then return "Even" if odd return "Odd"

# My answer using modulus and if else
def even_or_odd (number)
    if number % 2 == 0
        return "Even"
    else 
        return "Odd"
    end
end

# best practices and most clever
# using ternary operator and a method .even? to check if it is even
def even_or_odd(number)
    number.even? ? "Even" : "Odd"
end

# Most Clever using array index and modulus
def even_or_odd(number)
    ['Even', 'Odd'][number % 2]
end
# ternary operator version of my answer with modulus
def even_or_odd(number)
    (number % 2 == 0) ? "Even" : "Odd"
end

# using ternary operator and .odd?
def even_or_odd(number)
    number.odd? ? "Odd" : "Even"
end