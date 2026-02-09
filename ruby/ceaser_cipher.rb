# frozen_string_literal: true

LOWER = ('a'..'z').to_a
UPPER = ('A'..'Z').to_a

def caesar_cipher(message, shift)
  shift = shift.to_i % 26

  message.chars.map do |char|
    if LOWER.include?(char)
      LOWER[(LOWER.index(char) + shift) % 26]
    elsif UPPER.include?(char)
      UPPER[(UPPER.index(char) + shift) % 26]
    else
      char
    end
  end.join
end

keys = [1, 9, 6, 2, 1, 2, 2, 6, 1, 9, 5, 1, 0, 7, 1, 8, 1, 9, 9, 2, 0, 1, 0, 8]

# ------------------------------------------------------------------------------
puts 'Encrypt with key'

message = 'Hello World! This is a Ruby program.'
encrypted = keys.reduce([message]) do |arr, key|
  arr << caesar_cipher(arr.last, key)
end
puts encrypted

# ------------------------------------------------------------------------------
puts
puts 'Decrypt with reversed keys'
reverse_keys = keys.reverse.map { |k| -k }
decrypted = reverse_keys.reduce([encrypted.last]) do |arr, key|
  arr << caesar_cipher(arr.last, key)
end
puts decrypted
