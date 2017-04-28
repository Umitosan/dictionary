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
  redirect('/add_word')
end

get('/add_word') do
  @words = Word.all
  redirect('/')
end

get('/dictionary/:id') do
  @current_word = Word.find(params.fetch('id').to_i)
  Word.store_selected_word(@current_word)
  @definitions = @current_word.all
  erb(:word_summary)
end

post('/dictionary/:id/add_def') do
  @selected_word = Word.get_selected_word
  def_new = Definition.new(params.fetch('def_input'))
  Word.store_def(new_def)
  redirect('/dictionary/:id')
end

# get('/dictionary/:id/add_def') do
#   @selected_word = Word.get_selected_word
#   @definitions = Definition.all
#   redirect('/dictionary/:id')
# end






# HTTP POST requests supply additional data from the client (browser) to the server in the
#   message body.
# In contrast, GET requests include all required data in the URL. Forms in HTML can use
#   either method by specifying method="POST" or method="GET" (default) in the
#   <form> element.
