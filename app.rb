require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'
require 'sinatra/activerecord'
require_relative './lib/user'
require_relative './lib/property'

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

  get '/sessions/new' do
    erb :'/sessions/new'
  end

  post '/sessions' do
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/properties'
    else
      flash[:notice] = "Please check your email or password"
      redirect '/sessions/new'
    end
  end
  
  get '/properties' do
    @user_id = session[:user_id]
    @properties = Property.all
    erb :'/properties/index'
  end

  get '/properties/new' do
    @user_id = session[:user_id]
    erb :'/properties/new'
  end

  post '/properties' do
    property = Property.new(params)
    property.user = User.find_by(id: session[:user_id])
    property.save
    redirect '/properties'
  end

  post '/sessions/destroy' do
    session.clear
    flash[:notice] = 'You have successfully logged out'
    redirect '/sessions/new'
  end

   get '/properties/:id' do
    erb :'properties/view_dates'
   end

  run! if app_file == $PROGRAM_NAME
end
