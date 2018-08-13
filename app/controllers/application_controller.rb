
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # landing page redirects to /posts
  get '/' do
    redirect '/posts'
  end

  # CREATES a new blog post
  post '/posts' do
    @posts = Post.all
    erb :index
  end

  get '/posts/new' do
    erb :new
  end
end
