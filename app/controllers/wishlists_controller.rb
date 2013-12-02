class WishlistsController < ApplicationController
  before_filter :require_user

  def index
    @family_members = User.all - [current_user]
  end

  def update
    current_user.update_attribute(:wishlist, params[:wishlist])
    flash[:update] = "Your changes have been saved."
    redirect_to :wishlists
  end

end
