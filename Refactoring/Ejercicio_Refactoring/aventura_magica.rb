class Jugador
  attr_reader :nombre

  def initialize(nombre)
    @nombre = nombre
    @inventario = []
  end

  def agregar_item(item)
    @inventario << item
  end

  def mostrar_inventario
    puts "Inventario de #{@nombre}:"
    @inventario.each do |item|
    puts "- #{item}"
    end
  end
end

class Jugar
  def initialize(jugador)
    @jugador = jugador
  end

  def iniciar
    puts "¡Bienvenido a la aventura, #{@jugador.nombre}!"
    puts "Encuentras una espada. ¿Quieres agregarla a tu inventario? (s/n)"
    respuesta = gets.chomp.downcase
    if respuesta == "s"
    @jugador.agregar_item("espada")
    end
    puts "¡La aventura ha terminado, #{@jugador.nombre}!"
  end
end

# Crear un jugador
puts "Ingresa tu nombre:"
nombre_jugador = gets.chomp
jugador = Jugador.new(nombre_jugador)
jugar = Jugar.new(jugador)
jugar.iniciar
jugador.mostrar_inventario