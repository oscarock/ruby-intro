class Animal
    attr_accessor :num_legs, :warm_blooded

    def initialize()
        @num_legs = num_legs
        @warm_blooded = warm_blooded
    end

    # # Getter
    # def num_legs
    #   @num_legs
    # end
    #
    # # Setters
    # def num_legs=(num_legs)
    #   @num_legs = num_legs
    # end

end

class Mammal < Animal

end

class Amphibian < Animal

end

class Primate < Animal

end

class Frog < Animal

end

class Bat < Animal

end

class Chimpanzee < Animal

end

module SuperPowers
    class Metodos_locos
        def use_laser_vision
            'la vision laser no esta disponible '
        end
    end
end

modulos = SuperPowers::Metodos_locos.new()
puts modulos.use_laser_vision


# animal1 = Primate.new()
# puts animal1.num_legs = 2
#
# animal2 = Bat.new()
# puts animal2.num_legs = 4
