class Owner::InstrumentsController < ApplicationController
  def index
    @user = current_user
    @instruments = @user.instruments
  end
end
