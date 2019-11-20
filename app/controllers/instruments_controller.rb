class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @instruments = Instrument.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    @instrument.user = current_user
    if @instrument.update(instruments_params)
      redirect_to instrument_path
    else
      render :new
    end
  end

  def destroy
    @instrument.destroy
    redirect_to instruments_path
  end

  private

  def instruments_params
    params.require(:instrument).permit(:description, :unit_price, :category, :user_id)
  end

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end
end
