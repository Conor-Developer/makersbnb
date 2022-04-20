require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'
require 'sinatra/activerecord'
require_relative './lib/user'

class MakersBnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  register Sinatra::Flash

  enable :sessions

  get '/' do
    erb :'/index'
  end

  post '/sign-up' do
    User.create(params)
    redirect '/sign-up'
  end

  get '/sign-up' do
    erb :'/sign_up'
  end

  get '/log-in' do
    erb :'/log_in'
  end

  post '/log-in' do
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/log-in/new'
    else
      flash[:notice] = "Please check your email or password"
      redirect '/log-in'
    end
  end
  
  get '/log-in/new' do
    erb :'/logged_in'
  end

  run! if app_file == $PROGRAM_NAME
end
