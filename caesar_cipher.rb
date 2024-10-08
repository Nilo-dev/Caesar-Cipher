# frozen_string_literal: true

LOWER_CASE_START = 'a'.ord
UPPER_CASE_START = 'A'.ord
ALPHABET_SIZE = 26

def caesar_cipher(string, shift)
  string.chars.map do |char|
    if char =~ /[a-z]/
      shift_char(char, shift, LOWER_CASE_START)
    elsif char =~ /[A-Z]/
      shift_char(char, shift, UPPER_CASE_START)
    else
      char
    end
  end.join
end

def shift_char(char, shift, start_ascii)
  new_position = ((char.ord - start_ascii + shift) % ALPHABET_SIZE) + start_ascii
  new_position.chr('UTF-8')
end

puts caesar_cipher('What a string!', 5)
puts caesar_cipher('RubyOnRails', 10)
