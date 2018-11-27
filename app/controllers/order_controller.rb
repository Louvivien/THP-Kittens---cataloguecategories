include 'CartTotal'

class OrderController < ApplicationController
  def new
  end

  def create
    @amount = total(session[:cart_id])

    @order = Order.new(order_params)
    @current_cart.cart_items.each do |x|
      @order.cart_items << x
      x.cart_id = nil
    end
    @order.save
    Cart.destroy(session[:cart_id])
    session[:cart_id] = nil

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source => params[stripeToken]
    )

    charge = Stripe::Charge.create (
      :customer => customer.id,
      :amount => @amount
      :description => "Paiement de #{current_user}"
      :currecy => 'eur'
    )

    rescue Stripe::CardError => e.message
      redirect_to root_path
    end 
  end

  def show
  end

  def index
  end
end
