class Word
  attr_accessor(:title)
  # @@dictionary = []

  define_method(:initialize) do |title|
    @title = title
  end

end
