module CartTotal
  extend ActiveSupport::Concern
  def total(id)    
    sum = 0
    Cart.find(id).cart_items.each do |x|
      sum += x.quantity * x.item.price
    end
    return sum
  end 

end