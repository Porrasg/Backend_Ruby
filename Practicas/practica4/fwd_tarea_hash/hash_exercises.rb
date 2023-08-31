puts("-------------------- 1 --------------------")
color ="blue"
number = 9
def create_favorite_hash(color, number)
  # return a hash with the following key/value pairs:
  # key of color (as a symbol) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
  hash = {
    key: color, 
    key_number: number
  }
end
puts create_favorite_hash(color, number)

puts("-------------------- 2 --------------------")
hash = { color: "red"}
def favorite_color(favorite_list)
  # return the value of the color key
  favorite_list.keys
end
puts favorite_color(hash)[0]

puts("-------------------- 3 --------------------")
hash = {'color_blue' => 20}
def favorite_number(favorite_list)
  # use #fetch to return the value of the number key or 42 if the key is not found
  favorite_list.fetch("color_blue" ,42)
end
puts favorite_number(hash)

puts("-------------------- 4 --------------------")
favorite_list = { name: "Kianny" }
def update_favorite_movie(favorite_list, movie)
  # Step 1: add/update the key of movie (as a symbol)
  favorite_list[:movie.to_sym] = movie

  # Step 2: return the hash (because Step 1 returns the value of the movie key)
  favorite_list
end
puts update_favorite_movie(favorite_list, "Barbie")

puts("-------------------- 5 --------------------")
favorite_list = { "name" => "Kianny", "number" => 90 }
def remove_favorite_number(favorite_list)
  # Step 1: delete the number data
  favorite_list.delete("number")
  # Step 2: return the hash (because Step 1 returns the value of the number key)
  return favorite_list
end
puts remove_favorite_number(favorite_list) 

puts("-------------------- 6 --------------------")
categories = {
  :food => "pizza",
  :movies => "horror",
  :color_fav => "blue"
}
def favorite_categories(favorite_list)
  # return the keys of favorite_list
  favorite_list.keys
end
puts favorite_categories(categories)

puts("-------------------- 7 --------------------")

favorite_list = {'item1': 1, 'item2': 2, 'item3': 3}
def favorite_items(favorite_list)
  # return the values of favorite_list
  return favorite_list.values()
end
items = favorite_items(favorite_list)
puts items

puts("-------------------- 8 --------------------")

original_list = { "a" => 120, "b" => 220 }
additional_list = { "c" => 320, "d" => 420 }
def merge_favorites(original_list, additional_list)
  # merge the two hashes: original_list and additional_list
  original_list.merge!(additional_list)
end
merge_favorites(original_list, additional_list)
puts original_list


