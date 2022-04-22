require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'
require 'sinatra/activerecord'
require_relative './lib/user'
require_relative './lib/property'
require_relative './lib/availability'

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
    property = Property.new(name: params[:name], description: params[:description],price: params[:price])
    list = (params[:start_date]..params[:end_date])
    property.user = User.find_by(id: session[:user_id])
    property.save
    list.each do |date|
      availability = Availability.new(date: date, available?: true, confirmation_pending?: false)
      availability.property = Property.find_by(name: params[:name])
      availability.save
    end
    redirect '/properties'
  end

  post '/sessions/destroy' do
    session.clear
    flash[:notice] = 'You have successfully logged out'
    redirect '/sessions/new'
  end

   get '/properties/:id' do
    session[:property_id] = params[:id]
    @property_id = params[:id]
    @dates = Availability.where(property_id: params[:id]).order(date: :asc)
    erb :'properties/view_dates'
   end

   post '/property/:id' do
    Availability.find_by(id: params[:id]).update(available?: false)
    redirect '/property/:id'
   end

   get '/property/:id' do
    erb :'properties/book_day'
   end

  run! if app_file == $PROGRAM_NAME
end
