class ScreensController < ApplicationController
  before_action :authenticate_customer!
  
  def index
    @screens = Screen.all
  end

  def show
    @screen = Screen.find(params[:id])
    @movie = Movie.find(params[:movie_id])
    @show = Show.find(params[:show_id])
    render :show
  end

end
