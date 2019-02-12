# Write your code here.
require 'pry'
def dictionary
    {
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
    array_tweet = tweet.split(" ")
    dictionary_keys = dictionary.keys 
    correct_array = array_tweet.collect do |word|
        if dictionary_keys.include?(word) == true or dictionary_keys.include?(word.downcase) == true
            word = dictionary[word.downcase]
        else
            word = word 
        end
    end
    correct_array.join(" ")
end

def bulk_tweet_shortener(array_tweets)
    array_tweets.each do |tweet|
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
    shortened_tweet = word_substituter(tweet)
    if shortened_tweet.length > 140
        shortened_tweet[0..136] + "..."
    else 
        shortened_tweet
    end
end
