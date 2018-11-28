=begin class CartItemController < ApplicationController
  def create
    chosen_item = Item.find(params[:item_id])
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
  end
  def destroy
    @cart_item = CartItem.find(cart_item_params[:id])
    @cart_item.destroy
  end
  def add_quantity
    @cart_item = CartItem.find(params[:id])
    @line_item.quantity += 1
    @line_item.save
  end
  def reduce_quantity
    @cart_item = CartItem.find(params[:id])
    if @cart_item.quantity > 1
      @cart_item.quantity -= 1
    end
    @cart_item.save
  end
  private
    def cart_item_params
      params.require(:cart_item).permit(:quantity,:item_id, :cart_id)
    end
end

=end