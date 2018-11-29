class ItemController < ApplicationController



  def new
  	@item = Item.new
  end

  def index
    @items = Item.all
  end

  def edit
  	 @item = Item.find(params[:id])
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.create!(item_params)
    redirect_to root_path
  end

  def update
  	@item = Item.find(params[:id])
  	@item.update(item_params)
  end

  def destroy
  	Item.destroy(params[:id])
  end

  private

  def item_params
  	params.require(:item).permit(:image, :title, :description, :price)
  end
end
