=begin class CartController < ApplicationController
   def show
   include CartTotal
    @cart = @current_cart
    @total = total(current_user.id)
   end

  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end
end

=end