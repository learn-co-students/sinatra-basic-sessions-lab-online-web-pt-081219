require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "secret"
      end 

    get '/' do 
        erb :index
    end

    post '/checkout' do 
        # binding.pry #use to see what session is 
        #use to see what happens when you set a session[:item]
        #what params is 
        #what params item is
        
        @session = session 
        #set sessions to an instance variable
        #do this so you can access it in the views
        @item = params[:item] #set item
        @session[:item] = @item #set session item
        @session[:item] = params[:item]
        adding the item to the session

        erb :checkout
    end
