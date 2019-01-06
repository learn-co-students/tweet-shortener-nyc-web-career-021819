def dictionary
	dictionary = {"hello" => "hi", "to" => "2", "two" =>  "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
	array = tweet.split(" ")
	array.collect do |x|
		if dictionary.keys.include?(x.downcase)
			x = dictionary[x.downcase]
		else
			x
		end
	end.join(" ")
end

def bulk_tweet_shortener(tweet)
	tweet.each do |x|
		v = word_substituter(x)
		puts v
	end
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140 
		word_substituter(tweet)
	else
		tweet
	end
end

def shortened_tweet_truncator(tweet)
	if word_substituter(tweet).length > 140
		word_substituter(tweet)[0..136] + '...'
	else
		tweet
	end
end


