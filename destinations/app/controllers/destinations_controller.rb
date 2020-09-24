class DestinationsController < ApplicationController
  
  get "/destinations" do
    # user = User.find(session[:user_id])
    @destinations = current_user.destinations
    erb :"/destinations/index"
  end 
  
  get '/destinations/new' do 
    erb :"/destinations/new"
  end
  
  get '/destinations/:id' do
     if session[:user_id]
       find_destination
       erb :"/destinations/show"
     else 
       redirect "/"
     end 
  end 
  
  post '/destinations' do 
    destination = Destination.create(params[:destination])
    redirect "/destinations/#{destination.id}"
  end 
  
  get "/destinations/:id/edit" do 
    find_destination
    erb :"/destinations/edit"
  end 
  
  patch "/destinations/:id" do
    find_destination
    if current_user.id = destination.user_id
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