require 'sinatra/base'

class DBServer < Sinatra::Base

  enable :sessions

  get '/' do
    erb :'/set'
  end

  post '/set' do
    session[:key] = params[:key]
    session[:value] = params[:value]
    redirect '/set'
  end

  get '/set' do
    @string = request.query_string
    erb :'/result'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
