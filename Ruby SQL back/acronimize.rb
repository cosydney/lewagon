def acronimize(sentence)
sentence.split(" ").map { |word| word[0]}.join.upcase
end

p acronimize("hi this is me")