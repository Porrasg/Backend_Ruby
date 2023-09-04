class Mago
    attr_accessor :name, :spell

    def encantamiento(mage)
        puts "#{@name} invoca #{@spell} sobre #{mage}"
    end
end