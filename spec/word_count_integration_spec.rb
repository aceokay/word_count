require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count execution path', {:type => :feature}) do
  it('takes two entries and returns a count of how often a specified string occued in another, larger, string') do
    visit('/')
    fill_in('sentence', :with => 'A Dandelion is common but I have a soft place for the dandelion. Give me a dandelion and dandelion love will blossom')
    fill_in('word', :with => 'dandelion')
    click_button('Count')
    expect(page).to have_content('The word dandelion was found 4 times')
  end
end
