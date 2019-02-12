def dictionary

	dictionary = {
		"hello" => "hi",
		"to" => "2",
		"two" => "2",
		"too" => "2",
		"for" => "4",
		"four" => "4",
		"be" => "b",
		"you" => "u",
		"at" => "@",
		"and" => "&"
	}

end


def word_substituter(tweet)
	tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
      end
  end.join(" ")
end



def bulk_tweet_shortener(array)
	array.each do |tweet|
    	puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(tweet)
	if tweet.length <= 140
		tweet
	else
		tweet.split(" ").map do |word|
      		if dictionary.keys.include?(word.downcase)
        		word = dictionary[word.downcase]
      		else
        		word
      		end
  		end.join(" ")
  	end	
end



def shortened_tweet_truncator(tweet)
	if tweet.length <= 140
		tweet
	else
		new_tweet = tweet.split(" ").map do |word|
      		if dictionary.keys.include?(word.downcase)
        		word = dictionary[word.downcase]
      		else
        		word
      		end
  		end

  	new_tweet = new_tweet.join(" ")
  		if new_tweet.length <= 140
  			new_tweet
  		else
  			new_tweet[0..139]
  		end
  	end
end
