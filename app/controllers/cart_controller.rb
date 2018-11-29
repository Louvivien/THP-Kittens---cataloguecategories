
class CartController < ApplicationController

  before_action :current_cart


   def show
     @cart = @current_cart
   end

   def destroy
     @cart = @current_cart
     @cart.destroy
     session[:cart_id] = nil
     redirect_to root_path
   end


   private
   def current_cart
     if session[:cart_id]
       cart = Cart.find_by(id: session[:cart_id])
       if cart.present?
         @current_cart = cart
       else
         session[:cart_id] = nil
       end
     end


      if session[:cart_id] == nil && current_user
       @current_cart = Cart.create(user_id: current_user.id)
       session[:cart_id] = @current_cart.id
     end

     
   end
end

