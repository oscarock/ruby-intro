# Factorial


# Tu solucion abajo:
def factorial(number)
  cont = 1
  while number>=1
    cont = cont*number
    number = number-1
  end
  return cont
end

puts factorial(5)




# def factorial(number)
#     if number == 0
#         1
#     else
#         number * factorial(number-1)
#    end
# end
#
# puts factorial(5)


# def factorial(number)
#   if number <= 1
#     1
#   else
#     (1..number).inject(:*)
#   end
# end
#
#
#
