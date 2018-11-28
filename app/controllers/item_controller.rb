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
  	@item = Item.new(item_params)
  	if @item.save
  		flash[:info] = "Succesfully created"
  	else
  		flash[:warning] = "Could not create item"
  	end	
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
