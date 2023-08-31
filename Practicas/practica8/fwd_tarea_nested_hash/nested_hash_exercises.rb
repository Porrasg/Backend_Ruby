puts("-------------------- 1 --------------------")
def find_language_information(languages, language_name)
  # Take languages (a nested hash) and language_name as a symbol, return the
  # value for the language_name key (which will be another hash!)

  # the languages hash will look something like this:
  # {
  #   ruby: { initial_release: 'December 25, 1996', is_beautiful?: true },
  #   javascript: { initial_release: 'December 4, 1995', is_beautiful?: false }
  # }
  languages[language_name]
end
languages = {
  ruby: { initial_release: 'December 25, 1996', is_beautiful?: true },
  javascript: { initial_release: 'December 4, 1995', is_beautiful?: false }
}

p find_language_information(languages, :ruby)
p find_language_information(languages, :javascript)


puts("-------------------- 2 --------------------")
def add_information_about_language(languages, language_name, info_key, info_value)
  # Take languages and add the key/value pair info_key/info_value to the nested
  # hash of language_name, then return the updated languages hash

  languages[language_name][info_key] = info_value
  languages
end
lenguage_add = {
  ruby: { initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false }
}
updated = add_information_about_language(lenguage_add, :ruby, :is_beautiful?, true)
p updated

puts("-------------------- 3 --------------------")
def add_language(languages, language_name, language_info_value)
  # Take languages and add the key/value pair language_name/language_info_value
  # to it, then return languages
  languages[language_name] = language_info_value
  return languages
end
key_to_add = :java
value_to_add = { is_beautiful?: false, initial_release: 'May 23, 1995' }
languages = {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}
puts add_language(languages, key_to_add, value_to_add)

puts("-------------------- 4 --------------------")
def delete_information_about_language(languages, language_name, info_key)
  # Take languages and delete the key/value pair with key info_key from
  # language_name, then return languages
  languages[language_name].delete(info_key)
  languages
end

languages = {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}

p delete_information_about_language(languages, :ruby, :is_beautiful?)

puts("-------------------- 5 --------------------")
def delete_language(languages, language_name)
  # Take languages and delete the language_name key/value pair, then return
  # languages
  languages.delete(language_name)
  return languages
end
languages = {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}
updated = delete_language(languages, :ruby)
puts updated


puts("-------------------- 6 --------------------")
def find_beautiful_languages(languages)
  # Take languages and return a hash containing only languages which have the
  # key/value pair { is_beautiful?: true } listed in their information
  languages.select { |name, beautiful| beautiful[:is_beautiful?] == true }
end

languages = {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' },
  python: { is_beautiful?: false, initial_release: 'Feb 20, 1991' }
}

puts find_beautiful_languages(languages)

puts("-------------------- 7 --------------------")
def find_language_facts(languages, language_name, fact_index = 0)
  # Take languages (now with additional facts added to each language with the
  # key :facts and value of an array of strings) and return the fact
  # language_name has at fact_index of its facts array, or at index 0 if this
  # argument is not given

  # the revised languages hash will look something like this:
  # {
  #   ruby: { facts: ['fact 0', 'fact 1'],
  #           initial_release: 'December 25, 1996',
  #           is_beautiful?: true },

  #   javascript: { facts: ['fact 0', 'fact 1'],
  #                 initial_release: 'December 4, 1995',
  #                 is_beautiful?: false }
  # }

  lang = languages.dig(language_name)
  return nil if lang.nil?
  lang[:facts][fact_index]
end

lang = {
  ruby: { facts: ['was made for programmer happiness', 'its code is beautiful'],
          initial_release: 'December 25, 1996',
          is_beautiful?: true },

  javascript: { facts: ['you have to use semicolons everywhere', "its real name isn't even javascript"],
                initial_release: 'December 4, 1995',
                is_beautiful?: false }
}
p find_language_facts(lang, :ruby, 0)