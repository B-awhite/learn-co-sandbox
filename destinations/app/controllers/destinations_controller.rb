class DestinationsController < ApplicationController
  
  before do 
    require_login 
  end 
  
  get "/destinations" do
    @user = current_user
     @destinations = current_user.destinations
      erb :"/destinations/index"
  end
  
  get "/destinations/new" do 
       erb :"/destinations/new"
  end
  
  post "/destinations" do 
    destination = current_user.destinations.create(params[:destination])
    # destination = Destination.create(params[:destination])
      redirect "/destinations/#{destination.id}"
  end 
  
  get "/destinations/:id" do
      find_destination
      if @destination
         erb :"/destinations/show"
      else 
        redirect "/destinations"
      end 
  end 
  
  get "/destinations/:id/edit" do 
    find_destination
    erb :"/destinations/edit"
  end 
  
  patch "/destinations/:id" do
    find_destination
      @destination.update(params[:destination])
      redirect "/destinations/#{@destination.id}"
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