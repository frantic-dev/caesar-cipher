def is_uppercase?(letter)
  letters_array_uppercase = ("A".."Z").to_a
  letters_array_uppercase.include?(letter)
end

def get_new_letter(char, shift_number)
  letters_array = ("a".."z").to_a

  if letters_array.include?(char)
    original_index = letters_array.index(char)
    new_index = original_index + shift_number

    if new_index > letters_array.length()
      new_index = new_index - letters_array.length()
    end
    letters_array[new_index]

  else 
    char
  end
end
def caesar_cipher(string, shift_number)
  string_array = string.split('')
  new_string_array = []

  string_array.each do |char|
    if is_uppercase?(char)
      new_letter = get_new_letter(char.downcase, shift_number).upcase
    else 
      new_letter = get_new_letter(char, shift_number)
    end
    new_string_array.push(new_letter)
  end
   
  new_string_array.join('')
end

p caesar_cipher("What a string!", 5)
