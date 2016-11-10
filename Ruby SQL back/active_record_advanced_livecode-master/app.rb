require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

require_relative "config/application.rb"

set :views, proc { File.join(root, "app/views") }
set :bind, '0.0.0'

get '/' do
  @posts = Post.all

  erb :posts # Do not remove this line
end

get '/posts/:id' do
  id = params[:id]

  @post = Post.find(id)

  erb :post_details
end


post '/posts/:id' do
  id = params[:id]

  post = Post.find(id)
  post.name = params[:name]
  post.save

  redirect to("/posts/#{post.id}")

end



post '/posts/:id/delete' do

  id = params[:id]
  Post.find(id).destroy

  redirect to("/")

end

post '/posts/:id/upvote' do

  id = params[:id]
  post = Post.find(id)
  post.votes += 1
  post.save

  redirect to("/posts/#{post.id}")
end

post '/' do

  Post.create(name: params[:name], url: params[:url]) 
  redirect to("/")
end
