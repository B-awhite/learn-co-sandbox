class DestinationsController < ApplicationController
  
  get "/destinations" do
    @destinations = Destination.all
    erb :"/destinations/index"
  end 
  
  get "/destinations/new" do 
    if logged_in?
      erb :"/destinations/new"
    else 
      redirect "/login"
    end 
  end
  
  get "/destinations/:id" do
     if session[:user_id]
       find_destination
       erb :"/destinations/show"
     else 
       redirect "/"
     end 
  end 
  
  post "/destinations" do 
    destination = Destination.create(params[:destination])
    redirect "/destinations/#{destination.id}"
  end 
  
  get "/destinations/:id/edit" do 
    find_destination
    erb :"/destinations/edit"
  end 
  
  patch "/destinations/:id" do
    find_destination
    if current_user.id = destinations.user_id
      @destination.update(params[:destination])
      redirect "/destinations/#{@destination.id}"
    end
  end 
  
  delete "/destinations/:id" do 
    find_destination
    @destination.destroy
    redirect "/destinations"
  end
  
  
  private 
  
  def find_destination
    @destination = Destination.find_by(id:params[:id])
  end 
  
end 