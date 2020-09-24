class SessionsController < ApplicationController
  
  get '/login' do 
    erb :'/users/login'
  end 
  
  post '/login' do 
     if params["username"].empty? || params["password"].empty?
        @error = "Must have username and password"
        erb :'/users/login'
     else
        if user = User.find_by(username: params["username"], password: params["password"])
         session[:user_id] = user.id
         redirect '/destinations'
        else
           @error = "User not found"
           erb :'/users/login'
        end
     end
  end 
  
  get "/logout" do 
    session.clear
    redirect '/login'
  end 
  
end 