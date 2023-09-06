class Dog < Animal
    def talk
        puts "#{@name} dice Woof, Woof!"
    end

    def moves(desti)
        puts "#{name} corre a #{desti}"
    end
end