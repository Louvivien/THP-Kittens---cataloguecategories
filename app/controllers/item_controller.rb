class ItemController < ApplicationController
  def index
    @items = Item.all
  end

  # def id
  # 	@id = params[:id]
  # 	@item = Item.find(params[:id])	
  # end

  # def show
  #   @item = Item.find(params[:id])
  # end

end
