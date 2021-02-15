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

get '/named-cat' do
  p params
  @catname = params[:name]
  @color = params[:color]
  @adorable = params[:adorable]
  erb(:index)
end
