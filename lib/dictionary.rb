class Word

  attr_accessor(:title)
  @@dictionary = []

  define_method(:initialize) do |title|
    @title = title
  end

  define_singleton_method(:all) do
    @@dictionary
  end

  define_singleton_method(:store) do |word|
    @@dictionary.push(word)
  end

end


# class Definition
#   attr_accessor(:full_def)
#
# end
