require 'shotgun'
require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  "Shhhhhhhhhhhh I'm hunting duckies"
end

get '/random-cat' do
  @catname = %w(Amigo Misty Almond).sample
  erb(:index)
end

post '/named-cat' do
  p params
  @catname = params[:name]
  erb(:index)
end

get '/post-cat' do
  # p params
  # @catname = params[:name]
  erb(:forms)
end


#test comment
