class CinemaController < ApplicationController
  before_action :authenticate_customer!
  
  def index
    @cinemas = Cinema.all
  end
end
