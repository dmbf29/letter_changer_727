ALPHABET = ('A'..'Z').to_a

def encrypt(sentence)
  sentence.upcase.chars.map do |character|
    index = ALPHABET.index(character)
    index ? ALPHABET[index - 3] : character
  end.join
end
