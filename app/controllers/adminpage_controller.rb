class AdminpageController < ApplicationController
  def new

  end

  def index
  		@user = current_user
  		@items = Item.all
  		@orders = Order.all
  end
end
