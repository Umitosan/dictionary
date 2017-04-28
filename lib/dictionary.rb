class Word

  attr_accessor(:title)
  @@dictionary = []

  define_method(:initialize) do |title|
    @title = title
    # @id
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

  # define_singleton_method(:find) do ||
  #
  # end

end


# class Definition
#   attr_accessor(:full_def)
#
# end
