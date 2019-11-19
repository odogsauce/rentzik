class UsersController < ApplicationController
  def index
    @user = current_user
    @instruments = @user.instruments
  end

  def new
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
