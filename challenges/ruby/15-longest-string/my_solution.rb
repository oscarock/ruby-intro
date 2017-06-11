# Longest String

# Tu solucion abajo:

def longest_string(array)
	array.max_by{ |elem| elem.length }  # => "three"
end

p longest_string(['cat', 'zzzzzzz', 'apples'])  # => "zzzzzzz"
p longest_string(['']) # => ''
p longest_string([]) # => nil
