require 'pry-byebug'

# --------------------------- Practica dia 29/08/23 ---------------------------
puts("-------------------- Practica dia 29/08/23 --------------------")

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split('') # tambien en vez de split le ponemos chars

#   binding.pry # hay que quitralo cada vez que se termine de usar 

  unique_length = string_array.uniq.length
  original_length == unique_length
end

puts isogram?("Odin")