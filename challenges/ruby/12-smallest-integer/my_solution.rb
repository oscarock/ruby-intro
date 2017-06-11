# Smallest Integer



# Tu solucion abajo:


def smallest_integer(array)
	array.min
end

puts smallest_integer([1, 2, 3])       # => 1
puts smallest_integer([0, -10, 10])    # => -10
puts smallest_integer([-10, -20, -30]) # => -30


# def smallest_integer(array)
# 	menor = array[0]
# 	array.each do |num|
# 		if num < menor
# 			menor = num
# 		end
# 	end
# 	return menor
# end

# puts smallest_integer([1, 2, 3])       # => 1
# puts smallest_integer([0, -10, 10])    # => -10
# puts smallest_integer([-10, -20, -30]) # => -30
