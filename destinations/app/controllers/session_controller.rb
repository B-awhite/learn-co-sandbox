class SessionController < ApplicationController
  
  get "/login" do 
    erb :"/users/login"
  end 
  
  post "/login" do 
      if params["username"].empty? || params["password"].empty?
         @error = "Username and password must be filled"
         erb :"/users/login"
      else 
         if user = User.find_by(username: params["username"], password: params["password"])
            session[:user_id] = user.id 
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