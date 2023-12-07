def substrings(word, dictionary)
  result = {}
  dictionary.each do |substring|
    if word.downcase.include?(substring)
      result[substring] = word.downcase.scan(substring).length
    end
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)