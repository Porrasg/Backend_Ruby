class Dog
    attr_accessor :name, :age

    def report_age
        puts "#{@name} tiene #{@age} años"
    end

    def talk
        puts "#{@name} dice Woof, Woof!"
    end

    def moves(desti)
        puts "#{name} corre a #{desti}"
    end
end