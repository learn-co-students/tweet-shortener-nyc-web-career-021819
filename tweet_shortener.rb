def dictionary
  words_to_be_sub = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@" ,
    "and" => "&"
  }
end

def word_substituter(tweet)
  shortened = []
  keys = dictionary.keys
  tweet_words = tweet.split(" ")
  
    tweet_words.each do |word|
      if keys.include?(word.downcase)
      shortened << dictionary[word.downcase] 
    else
    shortened << word
  end
end
  shortened.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |word|
    puts word_substituter(word)
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length <= 140
    return tweets
  else
    return word_substituter(tweets)
  end
end

def shortened_tweet_truncator(tweets)
  shortened_tweet = selective_tweet_shortener(tweets)
  if shortened_tweet.length > 140
    return shortened_tweet[0..136] += "..."
  else
    return shortened_tweet
  end
end
    





