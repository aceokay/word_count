class String
  define_method(:word_count) do | needle |
    word_haystack = self.downcase()
    word_haystack = word_haystack.split(' ')
    # binding.pry
    return word_haystack.count(needle)
  end
end
