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
  tmp_word = Word.find(params.fetch('id').to_i)
  Word.store_selected_word(tmp_word)
  @current_word = Word.get_selected_word
  erb(:word_summary)
end

post('/dictionary/:id/add_def') do
  new_def = Definition.new(params.fetch('def_input'))
  @current_word = Word.get_selected_word
  @current_word.store_def(new_def)
  redirect('/dictionary/' + @current_word.id.to_s )
end

# post('/def/:id/delete') do
# # binding.pry
#     @current_word = Word.get_selected_word.id.to_s
#     clicked_def_id = params.fetch('id')
#     @current_word.definitions.delete_at(clicked_def_id)
#   redirect('/dictionary/' + @current_word.id.to_s )
# end


# HTTP POST requests supply additional data from the client (browser) to the server in the
#   message body.
# In contrast, GET requests include all required data in the URL. Forms in HTML can use
#   either method by specifying method="POST" or method="GET" (default) in the
#   <form> element.
