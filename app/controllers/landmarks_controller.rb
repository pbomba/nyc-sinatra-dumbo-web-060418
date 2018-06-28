class LandmarksController < ApplicationController
	get '/landmarks' do
		@landmarks = Landmark.all
		erb :'/landmarks/index'
	end

	get '/landmarks/new' do
		erb :'/landmarks/new'
	end

	post '/landmarks' do #posts to index
		@landmark = Landmark.create(name:params[:name], year_completed:params[:year_completed])
		redirect "/landmarks/#{@landmark.id}"
	end

	patch '/landmarks/:id' do
		@landmark = Landmark.find(params[:id])
		@landmark.name = params[:name]
		@landmark.year_completed = params[:year_completed]
		@landmark.save
		erb :'/landmarks/show'
	end

	get '/landmarks/:id/edit' do
		@landmark = Landmark.find(params[:id])
		erb :'/landmarks/edit'
	end


	get '/landmarks/:id' do
		@landmark = Landmark.find(params[:id])
		erb :'/landmarks/show'
	end


end
