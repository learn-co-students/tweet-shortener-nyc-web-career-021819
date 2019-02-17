# Write your code here.
def dictionary
subt = {"hello" => "hi", 
        "to" => "2", 
        "two" => "2", 
        "too" => "2", 
        "for" => "4", 
        "you" => "u", 
        "at" => "@", 
        "and" => "&",
        "be" => "b"
  
}
  
end
#this isn't easy
def word_substituter (strings)
 
  array_of_text = strings.split(" ")
  
  array_of_text.each_with_index do |word, value|
    dictionary.keys.each do |v|
      
    if v == word
      array_of_text[value] = dictionary[v]
    else 
      word
    end
  end
  end
  array_of_text.join(" ")
end


def bulk_tweet_shortener (array)
  array.each_with_index do |k, v|
  array_of_text = k.split(" ")
  
  array_of_text.each_with_index do |word, value|
    dictionary.keys.each do |x|
      
    if x == word.downcase
      array_of_text[value] = dictionary[x]
    else
      array_of_text
    end
    end
    end
    puts array_of_text.join(" ")
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else 
    #leave it alone
    tweet
  end

end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)
    "#{tweet[0..136]}..."
  else 
    tweet
end
end