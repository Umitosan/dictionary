require "dictionary"
require "rspec"
require "pry"

describe(Word) do

  before() do
    Word.clear()
  end

   describe('#title') do
    it("returns the title of the word") do
      test_word = Word.new('cantaloupe')
      expect(test_word.title()).to(eq('cantaloupe'))
    end
  end

   describe('.all') do
    it("returns dictionary array containing all the word objects") do
      expect(Word.all).to(eq([]))
    end
  end

 describe('.store') do
    it("adds a word to the dictionary array") do
      test_word = Word.new('cantaloupe')
      Word.store(test_word)
      expect(Word.all).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it("clears the list of words from the dictionary array") do
      test_word2 = Word.new('saunter')
      Word.store(test_word2)
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe('.get') do
    it("retrieves a single word object from the dictionary array") do
      test_word = Word.new('Cantaloupe')
      Word.store(test_word)
      expect(Word.get(0)).to(eq(test_word))
    end
  end

  describe('#id') do
    it("retrieves a word's id") do
      test_word = Word.new('Cantaloupe')
      expect(test_word.id).to(eq(1))
    end
  end

  describe('.find') do
   it("retrieves a single word object matching an id number") do
     test_word = Word.new('Cantaloupe')
     Word.store(test_word)
     test_word2 = Word.new('saunter')
     Word.store(test_word2)
     expect(Word.find(2)).to(eq(test_word2))
   end
 end

end

# ---------------------------------------------------------------------------------- #

describe(Definition) do

  describe('#def') do
    it("retrieves the ") do
      test_definition = Definition.new("A yellow spikey fruit with a pungent odor")
      expect(test_definition.define()).to(eq("A yellow spikey fruit with a pungent odor"))
    end
  end

  describe('.all') do
    it("returns all definitions in the definition_list") do
      expect(Definition.all).to(eq([]))
    end
  end

  describe('.store') do
    it("adds a definition to the definition_list") do
      test_definition = Definition.new("A yellow spikey fruit with a pungent odor")
      Definition.store(test_definition)
      expect(Definition.all).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it("clears the array of definitions") do
      test_definition = Definition.new("A yellow spikey fruit with a pungent odor")
      Definition.store(test_definition)
      Definition.clear()
      expect(Definition.all).to(eq([]))
    end
  end

  describe('.get') do
    it("retrieves a single definition from the definition_list") do
      test_definition = Definition.new("A yellow spikey fruit with a pungent odor")
      Definition.store(test_word)
      expect(Definition.get(0)).to(eq(test_definition))
    end
  end


end
