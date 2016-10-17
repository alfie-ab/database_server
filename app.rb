require 'sinatra/base'

class DBServer < Sinatra::Base

  enable :sessions

  @data = {}

  get '/' do
    "Hello"
  end

  get '/set' do
    @data.store(:key, params)
  end

  get '/get' do
    key = params[:key]
    @data[:key]
  end

  run! if app_file == $0
end
