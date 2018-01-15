def chiffre_de_cesar(string, shift = 5)
    alphabet   = Array('a'..'z') + Array('A'..'Z')
    encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
    string.chars.map { |c| encrypter.fetch(c, " ") }
end

puts chiffre_de_cesar("What a string").join + "!"