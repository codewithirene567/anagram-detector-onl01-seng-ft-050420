require "pry"

class Anagram
  attr_accessor :word

  def initialization(word)
    @word = word
  end
  
  def match(array)
    array.select do |element| #return the array of words that makes this true
    (@word.split("") == element.split(""))
    binding.pry
  end
  end
  end
  
end
    #takes an array of possible anagrams
    #return all matches in an array
    #If no matches exist, then it should return an empty array
    
#%w(foo bar) is a shortcut for ["foo", "bar"]. Meaning it's a notation to write an array of strings separated by spaces instead of commas and without quotes around them.

