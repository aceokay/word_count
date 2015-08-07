require('rspec')
require('word_count')
require('pry')

describe('String#word_count') do

  it('takes a user provided simple string and simple argument string and returns how many times the argument string appears in the original string') do
    expect(('roses').word_count('roses')).to(eq(1))
  end
  
  it('takes a user provided complex string and simple argument string and returns how many times the argument string appears in the first string') do
    expect(('roses today are not like roses our parent knew growing up').word_count('roses')).to(eq(2))
  end

end
