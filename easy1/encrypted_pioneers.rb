ENCRYPTED_NAMES = [
  "Nqn Ybirynpr",
  "Tenpr Ubccre",
  "Nqryr Tbyqfgvar",
  "Nyna Ghevat",
  "Puneyrf Onoontr",
  "Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
  "Wbua Ngnanfbss",
  "Ybvf Unvog",
  "Pynhqr Funaaba",
  "Fgrir Wbof",
  "Ovyy Tngrf",
  "Gvz Orearef-Yrr",
  "Fgrir Jbmavnx",
  "Xbaenq Mhfr",
  "Fve Nagbal Ubner",
  "Zneiva Zvafxl",
  "Lhxvuveb Zngfhzbgb",
  "Unllvz Fybavzfxv",
  "Tregehqr Oynapu"
]

ENCRYPTED_NAMES.each do |word|
  word_array = []
  word.split('').each do |letter|

    case letter
    when 'a'..'m', 'A'..'M'
      word_array << (letter.ord + 13).chr
      when 'n'..'z', 'N'..'Z'
        word_array << (letter.ord - 13).chr
      else
        word_array << letter
    end

  end
  puts word_array.join
end

# Further exploration
# In the case of a different architecture where the letters are
# not next to each other in the encoding, one could "count up"
# and catch on the boundaries of one chunk to the next and add
# the appropriate amount. This would add alot of hard coding.