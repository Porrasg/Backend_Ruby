class Cat < Animal
    def talk
        puts "#{@name} dice miaow, miaow!"
    end

    def moves(desti)
        puts "#{name} camina a #{desti}"
    end
    
end