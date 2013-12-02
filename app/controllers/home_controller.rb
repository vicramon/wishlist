class HomeController < ApplicationController
  expose(:user)

  def index
    redirect_to :wishlists if current_user
  end
end
