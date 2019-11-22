class Owner::BookingsController < ApplicationController
  before_action :set_booking, only: :destroy

  def index
    @user = current_user
    @bookings = Booking.all
  end

  def destroy
    @booking.destroy
    redirect_to owner_bookings_path
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
