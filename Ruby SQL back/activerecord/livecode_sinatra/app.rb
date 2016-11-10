require_relative "config/application"
require_relative "models/restaurant"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
	#we want to lit all our restaurants
	
	@restaurants = Restaurant.all

	erb :landing
end


get "/restaurants/:id" do
	id = params[:id]

	@restaurant = Restaurant.find(id)

	erb :restaurant_details
end 