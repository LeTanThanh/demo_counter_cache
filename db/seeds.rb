10.times do
  category = Category.create name: FFaker::Lorem.words.join(" "),
    description: FFaker::Lorem.sentence

  rand(20).times do
    category.products.create name: FFaker::Lorem.words.join(" "),
      price: rand(1000)
  end
end
