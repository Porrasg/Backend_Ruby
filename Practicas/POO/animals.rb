require_relative "bird"
require_relative "cat"
require_relative "dog"

bird = Bird.new
bird.name = "Lili"
bird.age = 1

cat = Cat.new
cat.name = "Michi"
cat.age = 2

dog = Dog.new
dog.name = "Mini"
dog.age = 3


# imprimir en consola
dog.moves('parque')
dog.report_age
dog.talk

