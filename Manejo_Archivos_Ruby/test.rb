require 'json'

# Crear un hash con información de Pokémon
pokemons = [
    { "nombre" => "Pikachu", "tipo" => "Eléctrico", "nivel" => 25 },
    { "nombre" => "Charmander", "tipo" => "Fuego", "nivel" => 18 },
    { "nombre" => "Squirtle", "tipo" => "Agua", "nivel" => 20 }
]

# Convertir el hash a formato JSON
json_pokemons = JSON.generate(pokemons)

# Guardar el JSON en un archivo
File.open("pokemons.json", "w") do |archivo|
    archivo.write(json_pokemons)
end

# Leer y cargar el JSON desde el archivo
loaded_json = File.read("pokemons.json")
loaded_pokemons = JSON.parse(loaded_json)

# Mostrar la información de los Pokémon cargados
puts "Pokémon cargados:"
loaded_pokemons.each do |pokemon|
    puts "Nombre: #{pokemon['nombre']}, Tipo: #{pokemon['tipo']}, Nivel: #{pokemon['nivel']}"
end