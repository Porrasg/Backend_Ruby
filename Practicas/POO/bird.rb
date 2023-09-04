class Bird
    attr_accessor :name, :age

    def report_age
        puts "#{@name} tiene #{@age} años"
    end

    def talk
        puts "#{@name} dice curr, curr!"
    end

    def moves(desti)
        puts "#{name} vuela a #{desti}"
    end
end