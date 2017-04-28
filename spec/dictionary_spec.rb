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

   describe('.all') do
    it("returns dictionary array containing all the word objects") do
      expect(Word.all).to(eq([]))
    end
  end

 #  describe('.store') do
 #   it("adds the word to the dictionary array") do
 #     test_word = Word.new('Cantaloupe')
 #     Word.store(test_word)
 #     expect(Word.dictionary).to(eq([test_word]))
 #   end
 # end

end
