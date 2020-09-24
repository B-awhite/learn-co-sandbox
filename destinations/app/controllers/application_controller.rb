require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "bubbles"
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end
  
  helpers do 
    def logged_in?
      !!session[:user_id]
    end 
  
  def current_user
    @user = User.find_by_id(session[:user_id]) if logged_in?
  end

end
