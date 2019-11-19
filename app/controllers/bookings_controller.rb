class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @instrument = Instrument.find(params[:instrument_id])
  end
end
