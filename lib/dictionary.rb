class Word
  attr_accessor(:title, :id, :definitions)
  @@dictionary = []
  @@selected_word = nil

  define_method(:initialize) do |title|
    @title = title
    @id = @@dictionary.length.+(1)
    @definitions = []
  end

  define_method(:store_def) do |definition|
    self.definitions.push(definition)
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

  define_singleton_method(:store_selected_word) do |word|
    @@selected_word = word
  end

  define_singleton_method(:get_selected_word) do
    @@selected_word
  end

end

# ---------------------------------------------------------------------------------- #

class Definition
  attr_accessor(:define, :id)

  define_method(:initialize) do |define|
    @define = define
  end

end

# class Definition
#   attr_accessor(:define)
#
#   define_method(:initialize) do |define|
#     @define = define
#   end
#
#   define_singleton_method(:all) do
#     @@definition_list
#   end
#
#   define_singleton_method(:store) do |definition|
#     @@definition_list.push(definition)
#   end
#
#   define_singleton_method(:clear) do
#     @@definition_list = []
#   end
#
#   define_singleton_method(:get) do |index|
#     @@definition_list[index]
#   end
#
# end
