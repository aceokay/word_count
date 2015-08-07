require('rspec')
require('word_count')

describe('String#word_count') do

  it('takes a user provided simple string and simple argument string and returns how many times the argument string appears in the original string') do
    expect(('roses').word_count('roses')).to(eq(1))
  end

  it('takes a user provided complex string and simple argument string and returns how many times the argument string appears in the first string') do
    expect(('tulips today are not like tulips our parent knew growing up').word_count('tulips')).to(eq(2))
  end

  it('handles strings with capitalizations within the search') do
    expect(("The Rhododendron is the state flower of Washington. As far as a rhododendron goes, they're nice in a rhododendron way.").word_count('Rhododendron')).to(eq(3))
  end

  it('handles strings that abut punctuation characters') do
    expect(('The Philippine national flower is called sampaguita. The sampaguita, like other perfume laden flowers, is highly sought after').word_count('sampaguita')).to(eq(2))
  end

end
