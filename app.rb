require 'sinatra'
require 'sinatra/reloader'
require './lib/dictionary'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all
  erb(:index)
end

post('/add_word') do
  word_new = Word.new(params.fetch('word_intput'))
  Word.store(word_new)
  redirect('/')
end
