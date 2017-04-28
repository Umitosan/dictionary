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

end
