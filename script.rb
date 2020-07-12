
require 'pry'

def double_words_in_phrase(string)
  string_array = string.split(' ')
  result = string_array.map { |word| word * 2}

  binding.pry

  string_array.join(' ')
end

double_words_in_phrase("This is a test")