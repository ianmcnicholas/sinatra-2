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
  "<div style='border: 3px dashed red'>
   <img src='https://product-image.juniqe-production.juniqe.com/media/catalog/product/seo-cache/x800/18/22/18-22-301P__CENTER/Sneaky-Cat-Laura-Graves-Canvas-Print.jpg'>
 </div>"
end
