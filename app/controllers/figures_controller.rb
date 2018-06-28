class FiguresController < ApplicationController


  get '/figures' do

  	@figures = Figure.all
    erb :'/figures/index'
  end

  get '/figures/new' do
    @landmarks = Landmark.all
    erb :'/figures/new'
  end

  post '/figures' do
  	@figure = Figure.create(name:params[:name])
  	redirect "/figures/#{@figure.id}"
  end

  get "/figures/:id" do
	@figure = Figure.find(params[:id]) 
	erb :'/figures/show' 
	end


end
