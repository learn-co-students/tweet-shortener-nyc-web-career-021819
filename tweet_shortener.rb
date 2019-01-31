def dictionary
  convert = {"hello" => "hi", "to" => "2", "two" => "2", "too"=>"2", "for"=>"4", "four" => "4", "be" =>"b", "you" => "u", "at" => "@", "and" => "&"}
end


def word_substituter(string)
  array = string.split(" ")
  array.collect do |word|
    dictionary.collect do |key,value|
      if key == word.downcase
        word.replace(value)
      end
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    array = string.split(" ")
    array.collect do |word|
     dictionary.collect do |key,value|
        if key == word.downcase
          word.replace(value)
       end
     end
   end
   array.join(" ")
  else 
     string
 end
end

def shortened_tweet_truncator(string)
  if string.length < 140
    string
  else
    string[0..136].concat("...")
  end
end