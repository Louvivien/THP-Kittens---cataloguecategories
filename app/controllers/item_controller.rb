class ItemController < ApplicationController
=begin
def index
    @items = Item.all
  end
=end
  def show
    @item = Item.find(params[:id])
  end

end
