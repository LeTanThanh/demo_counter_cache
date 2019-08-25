# Has many association
10.times do
  category = Category.create name: FFaker::Lorem.words.join(" "),
    description: FFaker::Lorem.sentence

  rand(20).times do
    category.products.create name: FFaker::Lorem.words.join(" "),
      price: rand(1000)
  end
end

# Many to many association
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

# Multi-level counter-cache
10.times do
  project = Project.create name: FFaker::Lorem.words.join(" "),
    description: FFaker::Lorem.sentence
  3.times do
    phase = project.phases.create name: FFaker::Lorem.words.join(" "),
      description: FFaker::Lorem.sentence
    10.times do
      phase.tasks.create name: FFaker::Lorem.words.join(" "),
        description: FFaker::Lorem.sentence
    end
  end
end
