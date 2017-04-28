require "dictionary"
require "rspec"
require "pry"

describe(Word) do

  describe('#title') do
   it("returns the title of the word") do
     test_word = Word.new('Cantaloupe')
     expect(test_word.title()).to(eq('Cantaloupe'))
   end
 end

  describe('#add') do
   it("adds the word to the dictionary array") do
     test_word = Word.new('Cantaloupe')
     test_word.add()
     expect(Word.dictionary(0)).to(eq([test_word]))
   end
 end

end
