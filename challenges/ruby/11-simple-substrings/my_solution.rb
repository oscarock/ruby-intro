def welcome(direccion)
	(direccion.include? 'CA') ? 'Welcome to California' : 'You should move to California'
end

puts welcome("CA")
puts welcome("BO")