require 'yaml'

# Crear un hash con información de Pokémon
pokemons = [
    { "nombre" => "Pikachu", "tipo" => "Eléctrico", "nivel" => 25 },
    { "nombre" => "Charmander", "tipo" => "Fuego", "nivel" => 18 },
    { "nombre" => "Squirtle", "tipo" => "Agua", "nivel" => 20 }
]

# Nombre del archivo YAML que deseas crear
yaml_pokemons = 'pokemons.yml'

# Escribir los datos en el archivo YAML
File.open(yaml_pokemons, 'w') do |archivo|
    archivo.write(pokemons.to_yaml)
end

# puts "Se ha creado el archivo YAML: #{yaml_pokemons}"

#luego de crearlo lo cargaremos
loaded_yaml = File.read('pokemons.yml')
loaded_pokemons = YAML.load(loaded_yaml)

# Mostrar la información de los Pokémon cargados
puts "Pokémon cargados:"
loaded_pokemons.each do |pokemon|
    puts "Nombre: #{pokemon['nombre']}, Tipo: #{pokemon['tipo']}, Nivel: #{pokemon['nivel']}"
end