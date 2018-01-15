def chiffre_de_cesar(string, key)

  key = key%26

  string.each_byte do |letter|
    if(letter >= 97) && (letter <= 122)
      letter = letter + key
        if letter > 122
          print (letter - 26).chr
        else
          print letter.chr
        end

    elsif(letter >=65) && (letter <= 90)
      letter += key
      if (letter > 90)
        print (letter - 26).chr
      else
        print letter.chr
      end

    else
      print letter.chr
    end
  end
end
chiffre_de_cesar("What a string!", 5)