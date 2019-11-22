require_relative 'config/environment'

class App < Sinatra::Base
    configure do 
        enable :sessions
        set :session_secret, "a8925thuiawdspvoanob823g9rawiefis0v9ha5w3rsdf2323zsdg"
    end 

    get "/" do 
        erb :index
    end 

    post "/checkout" do 
        session["item"] = params[:item]
        @session = session
        
        erb :checkout
    end
end