# Pseudocode



# 1. Solucion Inicial
class Die
	def initialize(n_lados)
		#puts "LOS LADOS SON: #{n_lados}"
		if n_lados < 1
			raise ArgumentError.new("Numero Menor a 1")
		else
			@n_lados = n_lados
		end
	end

	# Getter
  	def sides
    	@n_lados
  	end

  	def roll()
  		rand(1..@n_lados)
  	end
end

p die = Die.new(9)
puts "numero de lados #{die.sides}"
puts "se lanzo el dado el numero es #{die.roll}"




# 2. Solucion con Refactor





###### DRIVER CODE #########
