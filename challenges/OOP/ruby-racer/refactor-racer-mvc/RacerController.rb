
require_relative "RacerModel.rb"
require_relative "RacerView.rb"
include ConsoleHelper

class RacerController

    def initialize
        @modelo = RacerModel.new
    end

    def run
        playersNames = RacerView.pedir_datos
        p playersNames
        # tracks = RacerView.imprima_pista(playersNames)
        # p tracks
        @modelo.setPlayersNames(playersNames)

        while @modelo.alguien_gano?
          ###### WHILE CORRER!!!
          @modelo.crear_pista(playersNames)
          @modelo.lanza_dados
          @modelo.crear_pista(playersNames)

          #######  Borrar
        #   RacerView.clear_screen!

          ######### Move to Home
        #   RacerView.move_to_home!
        end
    end
end

  carrito = RacerController.new
  carrito.run
