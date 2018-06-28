class FiguresController < ApplicationController


  get '/figures' do

    erb :'/figures/index'
  end

  get '/figures/new' do
    @landmarks = Landmark.all
    # binding.pry
    erb :'/figures/new'
  end


end
