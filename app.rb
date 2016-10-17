require 'sinatra/base'

class DBServer < Sinatra::Base

  enable :sessions

  get '/' do
    'Hello DBServer'
  end

  get '/set' do
    @data = Hash.new
    session[:pair] = @data.merge!(params)
  end

  get '/get' do
    @current_pair = session[:pair]
    key = params[:key]
    @current_pair[key]
  end

  run! if app_file == $0
end
