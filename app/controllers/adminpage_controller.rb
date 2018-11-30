class AdminpageController < ApplicationController
  def new

  end

  def index
    unless current_user.admin?
      redirect_to root_path
    end
  		@user = current_user
  		@items = Item.all
  		@orders = Order.all
  end
end
