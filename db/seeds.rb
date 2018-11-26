require 'faker'

20.times do
  json = HTTParty.get('http://aws.random.cat/meow')
  Item.create("title": Faker::Cat.name, "description": Faker::Simpsons.quote, "price": rand(10)+1, "image_url": json.parsed_response["file"])
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
  Order.create(total: rand(100)+1, user_id: rand(5)+1, cart_id: rand(3)+1)
end