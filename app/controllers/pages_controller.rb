class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @instruments = @user.instruments
  end
end
