require "pry"

class Anagram
  attr_accessor :word

  def initialization
    @word = word
  end
  
  def match(array)
    empty_array = []
    word.detect do |word|
      if word.sort == array.sort
      else empty_array
  end
  end
  end
  
end
    #takes an array of possible anagrams
    #return all matches in an array
    #If no matches exist, then it should return an empty array
    
#%w(foo bar) is a shortcut for ["foo", "bar"]. Meaning it's a notation to write an array of strings separated by spaces instead of commas and without quotes around them.

describe 'Anagram' do 
  it 'should detect no matches' do
    diaper = Anagram.new('diaper')
    expect(diaper.match(%w(hello world zombies pants dipper))).to eq([])
  end

  it 'should detect a simple anagram' do
    detector = Anagram.new('ba')
    ba = detector.match(['ab', 'abc', 'bac'])
    expect(ba).to eq(['ab'])
  end

  it 'should detect an anagram' do
    detector = Anagram.new('listen')
    listen = detector.match %w(enlists google inlets banana)
    expect(listen).to eq(['inlets'])
  end

  it 'should detect multiple anagrams' do
    detector = Anagram.new('allergy')
    allergy = detector.match %w(gallery ballerina regally clergy largely leading)
    expect(allergy).to eq(['gallery', 'regally', 'largely'])
  end
end