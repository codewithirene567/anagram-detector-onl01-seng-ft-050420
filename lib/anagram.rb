require "pry"

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end
  
  def match(array) #["hello", "world", "zombies", "pants", "dipper"]
    array.select do |element| #element = "hello" which is part of the array, this line is supposed to return the word if it matches with the element
    (@word.split("").sort) == (element.split("").sort)
    #@word = "diaper" which is a new instance
  end
  end

  
end
    #takes an array of possible anagrams
    #return all matches in an array
    #If no matches exist, then it should return an empty array
    
#%w(foo bar) is a shortcut for ["foo", "bar"]. Meaning it's a notation to write an array of strings separated by spaces instead of commas and without quotes around them.
