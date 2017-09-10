def substrings(string, array)
	string = string.downcase
	hash = {}
	array.each do|word|
		how_many_word_array = string.scan(word)
		if how_many_word_array.length != 0
			hash[word] = how_many_word_array.length
		end
	end
	return hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)