class DestinationsController < ApplicationController
  
  get "/destinations" do
    @destinations = Destination.all 
    erb :"/destinations/index"
  end 
  
  get '/destinations/:id' do 
    @destination = Destination.find_by_id(params[:id])
    erb :"/destinations/show"
  end 
  
end 