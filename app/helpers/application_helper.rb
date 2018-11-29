module ApplicationHelper
  def total
    sum = 0
    Cart.find(session[:cart_id]).cart_items.each do |x|
      sum += x.quantity * x.item.price
    end
  return sum 
  end 

  def total_stripe
    sum = 0
    Cart.find(session[:cart_id]).cart_items.each do |x|
      sum += x.quantity * x.item.price
    end
  return sum * 100
  end
  def total_quantity
    q = 0
    Cart.find(session[:cart_id]).cart_items.each do |x|
      q += x.quantity
    end
    return q
  end
end
