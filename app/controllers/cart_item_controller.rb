 class CartItemController < ApplicationController
  def create
    chosen_item = Item.find(params[:item_id].to_i)
    current_cart = @current_cart

    if current_cart.items.include?(chosen_item)  
      @cart_item = current_cart.cart_items.find_by(item_id: chosen_item)
      @cart_item.quantity += 1
    else
      @cart_item = CartItem.new
      @cart_item.cart = current_cart
      @cart_item.item = chosen_item
    end
    @cart_item.save
    redirect_back(fallback_location: root_path)
  end
  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy

    # respond_to do |format|
     #  format.html { redirect_to root_path, notice: 'Item was successfully destroyed.' }
    #   format.json { head :no_content }
    #   format.js   { render :layout => false }
     # end
    redirect_back(fallback_location: root_path)
  end
  def add_quantity
    @cart_item = CartItem.find(params[:id])
    @cart_item.quantity += 1
    @cart_item.save
    redirect_back(fallback_location: root_path)
  end
  def reduce_quantity
    @cart_item = CartItem.find(params[:id])
    if @cart_item.quantity > 1
      @cart_item.quantity -= 1
    end
    @cart_item.save
    redirect_back(fallback_location: root_path)
  end
  private
    def cart_item_params
      params.require(:cart_item).permit(:quantity,:item_id, :cart_id)
    end
end

