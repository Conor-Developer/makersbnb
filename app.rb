require 'sinatra/base'
require 'sinatrareloader'
require 'sinatra/flash'

class MakersBnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  register Sinatra::Flash
  
  enable :sessions

  get '/' do
    'Hello World'
  end

  run! if app_file == $0
end
