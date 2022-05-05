
def substrings(sentence, dict)
  words = {}
  dict.each do |word|
    num_words = sentence.downcase.scan(word.downcase)
    words[word] = num_words.length if num_words.length > 0
  end
  words
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)