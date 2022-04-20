require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'
require 'sinatra/activerecord'

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

  run! if app_file == $PROGRAM_NAME
end
