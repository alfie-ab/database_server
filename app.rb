require 'sinatra/base'

class DBServer < Sinatra::Base

  get '/' do
    'Hello DBServer!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
