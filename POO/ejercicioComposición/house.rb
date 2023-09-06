require_relative "room"

class House
    attr_accessor :dormitorio, :cocina, :bano, :cuarto_de_pilas

    def initialize
        @dormitorio = Room.new
        @cocina = Room.new("Cocina")
        @bano = Room.new("Bano")
        @cuarto_de_pilas = Room.new("Cuarto de pilas")
    end

    def plan
        puts "Esta casa tiene #{@dormitorio}, #{@cocina},#{@bano}, #{@cuarto_de_pilas}"
    end
end