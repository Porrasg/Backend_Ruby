class Room
    attr_accessor :description

    def initialize(description = "Dormitorio")
        @description = description
    end
    def to_s
        "un #{@description}"
    end
end