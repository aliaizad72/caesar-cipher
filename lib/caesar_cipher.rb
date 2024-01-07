# frozen_string_literal: true

# A program to cipher text the roman emperor way
class CaesarCipher
  def cipher(str, shift_factor = 1)
    str_array = str.split('').map { |char| CaesarChar.new(char, char.ord) }
    str_array.each_with_index do |char, ind|
      # Ignoring shift for non-alphabet
      if char.alphabet?
        shift_ord = char.ord + shift_factor
        # Correct the shift if it is the shift went past the upper limit of upcase and lowcase
        shift_ord -= 26 if shift_ord > 'Z'.ord && char.upcase? || shift_ord > 'z'.ord && char.downcase?
        str_array[ind] = shift_ord
      else
        str_array[ind] = char.ord
      end
    end
    shift_str = str_array.map(&:chr)
    shift_str.join('')
  end
end

class CaesarChar
  attr_reader :char, :ord

  def initialize(char, ord)
    @char = char
    @ord = ord
  end

  def alphabet?
    upcase? || downcase?
  end

  def upcase?
    ord.between?('A'.ord, 'Z'.ord)
  end

  def downcase?
    ord.between?('a'.ord, 'z'.ord)
  end
end
  
