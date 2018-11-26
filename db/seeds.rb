20.times do
  json = HTTParty.get('http://aws.random.cat/meow')
  Item.create("title": Faker::Cat.name, "description": Faker::Simpsons.quote, "price": rand(10)+1, "image_url": json.parsed_response["file"])
end