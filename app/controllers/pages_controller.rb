class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:home]

  def home
    redirect_to instruments_path(description: params[:query][:description], category: params[:query][:category]) if params[:query].present?
  end
end
