class DestinationsController < ApplicationController
  
  before do 
     require_login 
  end 
  
  get "/destinations/new" do 
       erb :"/destinations/new"
  end
  
  get "/destinations" do
       @destinations = Destination.all
       erb :"/destinations/index"
  end
  
  post "/destinations" do 
    destination = Destination.create(params[:destination])
    if !destination.name.empty? && !destination.location.empty?
       destination.save 
       redirect "/destinations/#{destination.id}"
    else 
      @error = "Invalid data."
      erb :"/destinations/new"
    end 
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