class Word
  attr_accessor(:title)
  # @@dictionary = []

  define_method(:initialize) do |title|
    @title = title
  end

end


# class Definition
#   attr_accessor(:full_def)
#
# end
