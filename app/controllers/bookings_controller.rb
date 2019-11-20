class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @instrument = Instrument.find(params[:instrument_id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.instrument = @instrument
    if @booking.save
      redirect_to "/"
    else
      render :new
    end
  end
end
