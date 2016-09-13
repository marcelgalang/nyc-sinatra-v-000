class LandmarksController < ApplicationController

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmark/index'
  end

  get'/landmark/:id' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :'landmarks/show'
  end
end
