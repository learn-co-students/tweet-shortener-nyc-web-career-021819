# Write your code here.
def dictionary
  hash = {
  "Hello" => "hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
}

end

def word_substituter(tweet)
  array = dictionary.keys
  tweet1 = tweet.split(" ")
  tweet2 = tweet1.map do |word|
    if array.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  tweet2.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
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
  selective_tweet_shortener(tweet)
  if tweet.length > 140
    "#{tweet[0..136]}..."
  else
    tweet
  end
end 
