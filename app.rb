require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    configure '/' do   
        enable :sessions
        set :sessions_secret, "beans"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        binding.pry
        @session = session
        @item = params["item"]
        session[:item] = @item
        erb :checkout
    end
end