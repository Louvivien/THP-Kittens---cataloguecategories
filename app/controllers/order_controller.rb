class OrderController < ApplicationController
  def new
  end

  def create
    @amount = @order.total
  end

  def show
  end

  def index
  end
end
