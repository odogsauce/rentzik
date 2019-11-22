class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:description].present? && params[:category].present?
      sql_query = "description ILIKE :description AND category = :category"
      @instruments = Instrument.where(sql_query, {description: "%#{params[:description]}%", category: params[:category]})
    else
      @instruments = Instrument.all
    end

    @markers = @instruments.map do |instrument|
      {
        lat: instrument.user.latitude,
        lng: instrument.user.longitude,
        infoWindow: render_to_string(partial: "instruments/info_window", locals: { user: instrument.user })
      }
    end
  end

  def show
  end

  def new
    @instrument = Instrument.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @instrument.destroy
    redirect_to instruments_path
  end

  private

  def instruments_params
    params.require(:instrument).permit(:description, :unit_price, :category, :user_id, :photo)
  end

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end
end
