=begin
Counting sheep...

Parameters or Edge Cases
    inputs will be an array of boolean values
    values can be null or undefined
Return 
    the total number of boolean true that exist in the array
Examples
    [true,  true,  true,  false,
      true,  true,  true,  true ,
      true,  false, true,  false,
      true,  false, false, true ,
      true,  true,  true,  true ,
      false, false, true,  true]
      returns 17
Pseudo Code
    declare an empty array arr
    loop through the input array and push each boolean true to the empty array arr
    return the length of the array arr
=end

# My Answer
def countSheeps array
    arr = []
    for e in array
        if e == true
            arr.push(e)
        end
    end
    return arr.length
end

# puts countSheeps([true,  true,  true,  false, true,  true,  true,  true , true,  false, true,  false, true,  false, false, true , true,  true,  true,  true , false, false, true,  true])
# puts countSheeps([false])

# Best Practices and Most Clever
# using .count()
def countSheeps array
    array.count(true)
end

# .count() with an iteration
def countSheeps array
    array.count { |x| x == true }
end

# testing if array
def countSheeps array
    array.count(true) if array
end

# using .each instead of for loop
def countSheeps array

    count = 0
      array.each do |ele|
        if ele == true
          count += 1
        end
      end
      return count
        
    
    
    end

# using &:itself to count boolean true
def countSheeps(array)
    array.count(&:itself)
  end

# declaring a count and using truthy to update the count
def countSheeps array
    count = 0
    for i in array
      if i
        count+=1
      end
    end
    return count
end

# using .map
def countSheeps array
    result = 0
    array.map {|i| result += 1 if i == true}
    result
end

# rejecting falsy values and returning the length of the modified array
def countSheeps array
    array.reject(&:!).length
end

# using a ternary operator to check for truthy and nil values
def countSheeps array
    # May the force be with you
    array.map { |x| x ? x : nil }.compact.length
end

# using a select statement with truthy
def countSheeps(array)
    array.select{|sheep| sheep }.count
end