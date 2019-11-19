class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instruments_params)
    # @user = User.find(params[:user_id])
    # @instrument.user = @user
    if @instrument.save
      redirect_to "/"
    else
      render :new
    end
  end

  def edit
    @instrument = Instrument.find(params[:id])
  end

  def update
    @instrument.update(instruments_params)
    redirect_to instrument_path
  end

  def destroy
    @instrument.destroy
    redirect_to instruments_path
  end

  private

  def instruments_params
    params.require(:instrument).permit(:description, :unit_price, :category, :user_id)
  end
end
