class String
  define_method(:word_count) do | needle |
    word_haystack = self.split(' ')
    # binding.pry
    return word_haystack.count(needle)
  end
end
