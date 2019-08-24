10.times do
  category = Category.create name: FFaker::Lorem.words.join(" "),
    description: FFaker::Lorem.sentence

  rand(20).times do
    category.products.create name: FFaker::Lorem.words.join(" "),
      price: rand(1000)
  end
end

10.times do
  group = Group.create name: FFaker::Lorem.words.join(" "),
    description: FFaker::Lorem.sentence
  user = User.create name: FFaker::Name.name,
    email: FFaker::Lorem.words.join("_") + "@sun-asterisk.com",
    bio: FFaker::Lorem.sentence
end

50.times do
  GroupUser.find_or_create_by group: Group.all.sample, user: User.all.sample
end
