require 'shotgun'
require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  "Shhhhhhhhhhhh I'm hunting duckies"
end

get '/cat' do
  @catname = %w(Amigo Misty Almond).sample
  erb(:index)
end


#test comment
