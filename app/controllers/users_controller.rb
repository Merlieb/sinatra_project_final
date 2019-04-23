class UsersController < ApplicationController
    get '/users' do
        @users = User.all
        erb :'users/index'
    end

   
    get '/users/new' do
        erb :'users/new'
    end
  
    # get '/users' do #signup
    #   if !logged_in?
    #     erb :'users/new', locals: {message: "Please sign up before you sign in"}
    #   else
    #     redirect to '/images'
    #   end
    # end

    get "/users/:id" do 
      @images=[]
      @image=""
      @user=User.find_by(id:params[:id])
      erb:"users/show"
    end
  
    post '/users' do 
      if params[:username] == "" || params[:email] == "" || params[:password] == ""
        redirect to '/signup'
      else
        @user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
       if @user.save
        session[:user_id] = @user.id
        redirect to "/users/#{@user.id}"       
       else
         redirect "/"
       end
      end
    end
    
    get '/users/:id/edit' do
      if logged_in?
        @user = User.find_by_id(params[:id])
        if @user
          erb:"/users/edit"
        else
          redirect to '/users'
        end
      else
        redirect to '/login'
      end
    end
  
    patch '/users/:id' do
      @user=User.find_by(id:params[:id])
      if @user && @user.update(username:params[:username], email:params[:email])
       redirect "/users/#{@user.id}"
      else 
        redirect to '/login'
      end
    end

    get '/users/:id/delete' do
      if logged_in?
        @user = User.find_by_id(params[:id])
        if @user 
          @user.delete
          erb:"/home"
        else
          redirect to '/users'
        end
      else
        redirect to 'sessions/login'
      end

  end
end