class UsersController < ApplicationController
  
  get '/signup' do 
    erb :'/users/signup'
  end 
  
  post '/signup' do 
     user = User.new(params[:id])
     if user.username.empty? || user.password.empty?
        @error = "Must have username and password"
        erb :'users/signup'
     else
        user.save
        session[:user_id] = user.id
        redirect '/destinations'
     end
  end
  
  
end 