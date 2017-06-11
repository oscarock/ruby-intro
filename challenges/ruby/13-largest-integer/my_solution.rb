# Largest Integer

def largest_integer(array)
	array.max
end

puts largest_integer([-10, 0, 10])    # => 10
puts largest_integer([-10, -20, -30]) # => -10

# def largest_integer(array)
# 	mayor = array[0]
# 	array.each do |num|
# 		if num > mayor
# 			mayor = num
# 		end
# 	end
# 	return mayor
# end

# puts largest_integer([1, 2, 3])       # => 1
# puts largest_integer([0, -10, 10])    # => -10
# puts largest_integer([-10, -20, -30]) # => -30
