####### Traer Código de otro lado
require_relative "racer_utils.rb"
####### Incluir ConsoleHelper
include ConsoleHelper



class Car 
  def initialize
    @player_name1 = ""
    @player_name2 = ""
    @trackA = []
    @trackZ = []
    @position = 0
    @position1 = 0
    @correr = true
    @stop_running = 0
    ## DADO
    @dado1 = Die.new
    @dado2 = Die.new
    @position_play1 = 0
    @position_play2 = 0
  end

  def pedir_datos
    ####### Pedir Letras
    puts "Jugar 1, escoge una letra para tu jugador"
    @player_name1 = gets.chomp
    puts "Jugar 2, escoge una letra para tu jugador"
    @player_name2 = gets.chomp
  end

  def lanza_dados
    ###### Lanzar Dados y acumular
    @dado1.roll
    @dado2.roll
    @position_play1 += @dado1.roll
    @position_play2 += @dado2.roll
  end

  def crear_pista
    ###### Crear array A
    50.times do 
      @trackA << "|"
      if @position == @position_play1
        @trackA << "#{@player_name1}"
      end
      @position += 1
    end
    @trackA.pop
    ###### Crear array Z
    50.times do 
      @trackZ << "|"
      if @position1 == 
        @position_play2
        @trackZ << "#{@player_name2}"
      end
      @position1 += 1
    end
    @trackZ.pop
    ###### Imprimir array/Track A
    
    puts @trackA.join("")
    ###### Imprimir array/Track Z
    
    puts @trackZ.join("")
      sleep(0.5)
    end

    def alguien_gano?
      if @position_play1 >= 50 && @position_play2 >= 50
        imprimir_texto('Empate entre el jugador #{@player_name1} y el jugador #{@player_name2}')
      @correr = false
      # gane!() 
      return
    elsif @position_play1 >= 50
        imprimir_texto("Ganó el jugador #{@player_name1}")
      @correr = false
      # gane!() 
    elsif @position_play2 >= 50
        imprimir_texto("Ganó el jugador #{@player_name2}")
      @correr = false
    end  
  end

  def run
    while @correr == true
        ###### WHILE CORRER!!!

        ####Acordarse de vaciar los arreglos y  las position y postion1
        @trackA = []
        @trackZ = []
        @position = 0
        @position1 = 0

        lanza_dados()
        crear_pista()

        #######  Borrar
        clear_screen!()

        ######### Move to Home
        move_to_home!()

        #######  Condición parar STOP Running
        alguien_gano?()
      end
    end
  def imprimir_texto(string)
      puts string
  end
end

  carrito = Car.new
  carrito.pedir_datos
  carrito.run