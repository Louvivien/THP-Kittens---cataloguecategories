class CategoryController < ApplicationController

  def show
    @items = Item.where(category_id: params[:id].to_i)
  end 

end
