def substrings(word, dictionary)
  result = {}
  dictionary.each do |substring|
    if word.downcase.include?(substring)
      result[substring] = word.downcase.scan(substring).length
    end
  end
  result
end

