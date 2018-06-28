class LandmarksController < ApplicationController


	get '/landmarks' do

		erb :'/landmarks/index'
	end

	get '/landmarks/new' do

		erb :'/landmarks/new'
	end

	post '/landmarks' do
		@landmark = Landmark.new(name:params[:name], year_completed:params[:year_completed])
		erb :"/landmarks/#{@landmark.id}"
	end

	get '/landmarks/:id/show' do

		erb :'/landmarks/show'
	end
end
