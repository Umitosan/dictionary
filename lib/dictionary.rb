class Word
  attr_accessor(:title, :id)
  @@dictionary = []

  define_method(:initialize) do |title|
    @title = title
    @id = @@dictionary.length.+(1)
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

# ---------------------------------------------------------------------------------- #

class Definition
  attr_accessor(:define)
  @@definition_list = []

  define_method(:initialize) do |define|
    @define = define
  end

  define_singleton_method(:all) do
    @@definition_list
  end

  define_singleton_method(:store) do |definition|
    @@definition_list.push(definition)
  end

end
