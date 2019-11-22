class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @instrument = Instrument.find(params[:instrument_id])
  end

  def new
    @booking = Booking.new

    @instrument = Instrument.find(params[:instrument_id])
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @booking.instrument = Instrument.find(params[:instrument_id])
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:begin_at, :end_at, :final_price, :status, :user_id, :instrument_id)
  end
end
