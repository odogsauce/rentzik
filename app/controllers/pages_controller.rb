class PagesController < ApplicationController
  def dashboard
    @user = current_user
    @instruments = @user.instruments
  end
end
