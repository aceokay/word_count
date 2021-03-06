require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/count') do
  @word = params.fetch('word')
  @count = params.fetch('sentence').word_count(params.fetch('word'))
  erb(:count)
end
