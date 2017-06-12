# Count Between

# Tu solucion abajo:

def count_between(array,limit1,limit2)
    contador = 0
    array.each do |elem|
        if elem >= limit1 && elem <= limit2
            contador = contador + 1
        end
    end
    contador
end

p count_between([10, 20, 30], 10, 30) # => 3
p count_between([-10, 1, 2], 0, 100)  # => 2

# def count_between(arr, upper, lower)
#   arr.count {|x| (x >= lower) && (x<= upper)}
# end
