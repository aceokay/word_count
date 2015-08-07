class String
  define_method(:word_count) do | needle |
    needle.downcase!()
    punctuation_list = [',','.','?','!','(',')','#','@',':',';']
    word_haystack = self.downcase()
    punctuation_list.each do | punctuation |
      word_haystack.gsub!(punctuation,'')
    end
    word_haystack = word_haystack.split(' ')

    # binding.pry
    return word_haystack.count(needle)
  end
end
