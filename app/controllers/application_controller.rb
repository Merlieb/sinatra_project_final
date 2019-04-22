require './config/environment'
class ApplicationController < Sinatra::Base

    configure do
      set :public_folder, 'public'
      set :views, 'app/views'
      enable :sessions
      set :session_secret, "MyNote"
    end 
  
    get '/' do
      erb :'home'
    end

    helpers do
      def logged_in?
        !!current_user
      end
  
      def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
      end
  
    end
  
      get '/images/show' do
        redirect '../images/show'
      end
  
      get '/terms-and-conditions.erb' do
        erb :'users/terms-and-conditions'
      end

      get '/json_demo.txt' do
        erb :'users/json_demo'
      end
    #   get "/" do
    #     #Get an instance of an Image
    #    @image = Image.find( 1 )
    #    erb :index
    #  end

     get '/users/show' do
      redirect '../users/show'
    end
end