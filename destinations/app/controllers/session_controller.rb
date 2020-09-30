class SessionController < ApplicationController
  
  get "/login" do 
    erb :"/users/login"
  end 
  
  post "/login" do 
    # binding.pry
    user = User.find_by(username: params[:username])
     if  params[:username].empty? || params[:password].empty?
         @error = "Username and password must be filled"
         erb :"/users/login"
     else     
          if user && user.authenticate(params[:password])
            session[:user_id] = user.id 
            # binding.pry
            redirect "/destinations"
          else 
             @error = "User not found"
             erb :"/users/login"
          end 
     end 
  end  
    
  delete "/logout" do 
    session.clear
    redirect "/"
  end 
  
end 