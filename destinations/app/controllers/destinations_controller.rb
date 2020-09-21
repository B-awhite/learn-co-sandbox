class DestinationsController < ApplicationController
  
  get "/destinations" do
    @destinations = Destination.all 
    erb :"/destinations/index"
  end 
  
  get '/destinations/new' do 
    erb :"/destinations/new"
  end
  
  get '/destinations/:id' do 
    @destination = Destination.find_by_id(params[:id])
    erb :"/destinations/show"
  end 
  
  post '/destinations' do 
    destination = Destination.create(params[:destination])
    redirect "/destinations/#{destination.id}"
  end 
  
  get "/destinations/:id/edit" do 
    @destination = Destination.find_by(id:params[:id])
    erb :"/destinations/edit"
  end 
  
  patch "/destinations/:id" do
    destination = Destination.find_by(id:params[:id])
    destination.update(params[:destination])
    redirect "/destinations/#{destination.id}"
  end 
  
end 