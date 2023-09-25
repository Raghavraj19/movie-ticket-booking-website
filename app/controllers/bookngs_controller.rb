class BookngsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @bookngs = Bookng.all
  end

  def new
    @bookng = Bookng.new
    @screen = Screen.find(params[:screen_id])
    @movie = Movie.find(params[:movie_id])
    @show = Show.find(params[:show_id])
  end

  def create
    @bookng =  Bookng.new(bookng_params)
    @bookng.customer_id = current_customer.id
    if @bookng.save
      redirect_to bookng_path(@bookng) 
    else
      render :new 
    end 
     # render action :new in case of errors.
  end 

  def show
    @bookng = Bookng.find(params[:id])
    render :show
  end

  private 

  def bookng_params
    params.require(:bookng).permit(:number_of_seats, :show_id, :status, seat_ids: [])
  end 

end
