include CartTotal

class OrderController < ApplicationController
  def new
  end

  def create
    @amount = ((total(session[:cart_id]).to_i) * 100)
    @order = Order.new
    @order.total = total(session[:cart_id]).to_i 
    @order.cart_items = @current_cart.cart_items
    @order.user_id = @current_cart.user_id
    @order.save
    Cart.destroy(session[:cart_id])
    session[:cart_id] = nil
    @current_cart = Cart.create(user_id: current_user.id)
    session[:cart_id] = @current_cart.id

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :description => 'Paiement de #{current_user}',
      :currency => 'eur'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  


  end

  def show
  end

  def index
  end

end