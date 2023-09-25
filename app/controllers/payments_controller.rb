class PaymentsController < ApplicationController
  before_action :authenticate_customer!

    def index
    @payments = Payment.all
  end

  def new
    @payment = Payment.new
    @bookng = Bookng.find(params[:bookng_id])
  end

  def create
    @bookng = Bookng.find(params[:bookng_id])
    @bookng.update(status: 'Successful')
    customer = Stripe::Customer.create({
      :email => params[:stripeEmail],
      :source => params[:stripeToken]
    })

      Stripe::PaymentIntent.create(
      :customer => customer.id,
      :amount => 150,
      :description => 'Rails Stripe transaction',
      :currency => 'usd',
    )
  
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_payment_path
  end

  def show
    @bookng = Bookng.find(params[:bookng_id])
    @bookng.update(status: 'Successful')
    @payment = Payment.find(params[:id])
    @ticket = Ticket.new
    render :show
  end

  # private 

  # def amount
  #   params.require(:payment).permit(:number_of_seats, :show_id, :status, seat_ids: [])
  # end 

end
