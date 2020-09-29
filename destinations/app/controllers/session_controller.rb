class SessionController < ApplicationController
  
  get "/login" do 
    erb :"/users/login"
  end 
  
  post "/login" do 
    user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect "/destinations"
      else 
        redirect "/login"
      end 
  end  
    
  delete "/logout" do 
    session.clear
    redirect "/login"
  end 
  
end 