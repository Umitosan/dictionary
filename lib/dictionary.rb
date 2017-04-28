class Word

  attr_accessor(:title)
  @@dictionary = []

  define_method(:initialize) do |title|
    @title = title
    @id = @@dictionary.length.+(1)
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@dictionary
  end

  define_singleton_method(:store) do |word|
    @@dictionary.push(word)
  end

  define_singleton_method(:clear) do
    @@dictionary = []
  end

  define_singleton_method(:get) do |index|
    @@dictionary[index]
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@dictionary.each do |word|
      if (id == word.id)
        found_word = word
      end
    end
    found_word
  end

end

class Definition
  attr_accessor(:def)

end
