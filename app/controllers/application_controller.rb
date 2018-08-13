
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # get '/' do
  #   redirect '/posts'
  # end

  get '/posts/new' do # CREATE
    erb :new
  end

  post '/posts' do # CREATE
    @post = Post.create(name: params[:name], content: params[:content])
    redirect '/posts'
  end

  get '/posts' do # READ
    @posts = Post.all
    erb :index
  end

  get '/posts/:id' do # READ
    @post = Post.find(params[:id])
    erb :show
  end
end
