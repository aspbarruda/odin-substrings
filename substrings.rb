def substrings (string, dictionary)
  words = string.split(" ")
  result = words.reduce(Hash.new(0)) do |hsh, word|
    dictionary.each do |entry|
      if word.match?(/#{entry}/i)
        hsh[entry] += 1
        hsh
      end
    end
    hsh
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

result = substrings("Howdy partner, sit down! How's it going?", dictionary)

puts result