def canonical(word)
  word= word.split(//).sort
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

def anagrams_for(palabra, arreglo)
	palabra = palabra.split(//).sort
	arreglo.select {|valor| valor.split(//).sort == palabra}
end

p are_anagrams?("hola","alho")
p anagrams_for("rey", ["hola", "yer","yre", "compa"])