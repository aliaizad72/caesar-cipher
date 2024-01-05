# frozen_string_literal: true

# A program to cipher text the roman emperor way
class CaesarCipher
  def cipher(str, shift_factor = 1)
    str_array = str.split('')
    str_ord_array = str_array.map(&:ord)
  end
end

upper_case = ('A'..'Z').to_a
lower_case = ('a'..'z').to_a
alphabet_arr = upper_case + lower_case
p alphabet_arr.map(&:ord)
