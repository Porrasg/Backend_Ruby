class Bird < Animal
    def talk
        puts "#{@name} dice curr, curr!"
    end

    def moves(desti)
        puts "#{name} vuela hacia #{desti}"
    end
end