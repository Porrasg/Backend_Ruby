class Cat
    attr_accessor :name, :age

    def report_age
        puts "#{@name} tiene #{@age} años"
    end

    def talk
        puts "#{@name} dice miaow, miaow!"
    end

    def moves(desti)
        puts "#{name} camina a #{desti}"
    end
end