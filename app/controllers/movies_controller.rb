class MoviesController < ApplicationController
  before_action :authenticate_customer!

  def index
     @movies = Movie.paginate(page: params[:page], per_page: 2)
  end

  def show
    @movie = Movie.find(params[:id])
    render :show
  end

  def screen
    @movie = Movie.show.screen.find(params[:id])
    render :screen
  end  

end
