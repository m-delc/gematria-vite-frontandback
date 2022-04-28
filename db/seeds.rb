a = Alphabet.create!(letter: 'a')
b = Alphabet.create!(letter: 'b')

EnglishOrdinal.create!(number: 1, alphabet_id: a)
EnglishOrdinal.create!(number: 2, alphabet_id: b)