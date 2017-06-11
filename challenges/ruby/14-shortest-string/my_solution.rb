# Shortest String

#Tu solucion abajo:

def shortest_string(array)
	array.min_by{ |elem| elem.length }  # => "three"
end

p shortest_string(['cat', 'zzzzzzz', 'apples'])  # => "cat"
p shortest_string(['']) # => ''
p shortest_string([]) # => nil
