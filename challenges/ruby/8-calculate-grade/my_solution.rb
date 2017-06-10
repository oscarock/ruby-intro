# Calculate a Grade

# Tu solucion abajo:

def get_grade(prom)
  case
  when prom >= 90
    "A"
  when prom >= 80
     "B"
  when prom >= 70
     "C"
  when prom >= 60
     "D"                           
  else
    "F"
  end
end

#puts get_grade(95)
#puts get_grade(85)
#puts get_grade(75)
#puts get_grade(60)
#puts get_grade(5)

