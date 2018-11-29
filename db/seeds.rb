require 'faker'

Category.create(title: "Persan")
Category.create(title: "Siamois")
Category.create(title: "Benghal")
Category.create(title: "New Collection")

20.times do
  Item.create("title": Faker::Cat.name, "description": Faker::Simpsons.quote, "price": rand(10)+1, "image_url": Faker::LoremPixel.image("50x60", false, 'cats'), "category_id": rand(4)+1)
end



5.times do 
  User.create(email: Faker::Internet.email, password: "truc965", password_confirmation: "truc965")
end

3.times do 
  Cart.create(user_id: rand(5)+1)
end 

5.times do 
  CartItem.create(cart_id: rand(3)+1, item_id: rand(20)+1, quantity: rand(10)+1)
end

3.times do 
  Order.create(total: rand(100)+1, user_id: rand(5)+1)
end


