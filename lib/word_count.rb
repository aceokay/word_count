class String
  define_method(:word_count) do | needle |
    punctuation_list = [',','.','?','!','(',')','#','@',':',';']
    needle.downcase!()
    word_haystack = self.downcase()
    punctuation_list.each() do | punctuation |
      word_haystack.gsub!(punctuation,'')
    end
    word_haystack = word_haystack.split(' ')
    return word_haystack.count(needle)
  end
end
