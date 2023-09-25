class TicketsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
    @bookng = Bookng.find(params[:bookng_id])
  end

  def create
    @ticket =  Ticket.new(ticket_params)
    @bookng = Bookng.find(params[:bookng_id])
    if @ticket.save
      redirect_to ticket_path(id: @ticket.id, bookng_id: @bookng.id) 
    else
      render :new 
    end 
     # render action :new in case of errors.
  end 

  def show
    @bookng = Bookng.find(params[:bookng_id])
    @ticket = Ticket.find(params[:id])
    render :show
  end

  private 

  def ticket_params
    params.permit(:screen_id, :show_id, :bookng_id, :total_price )
  end 
end
