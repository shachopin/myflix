# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


category1 = Category.create!(name: "Cartoon");
category2 = Category.create!(name: "Comedy");

monk = Video.create!(title: "Monk", description: "Wow, a gret movie", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category2)
family_guy = Video.create!(title: "family_guy", description: "Stunning", small_cover_url: "/tmp/family_guy.jpg", large_cover_url: "/tmp/family_guy.jpg", category: category1)
south_park = Video.create!(title: "South Park", description: "Must see", small_cover_url: "/tmp/south_park.jpg", large_cover_url: "/tmp/south_park.jpg", category: category2)
futurama = Video.create!(title: "Futurama", description: "So Funny", small_cover_url: "/tmp/futurama.jpg", large_cover_url: "/tmp/futurama.jpg", category: category1)

dawei = User.create!(email: "test@example.com", password: "123", full_name: "Dawei Dai")

Review.create!(user: dawei, video: monk, rating: 5, content: "This is a really good movie!" )
Review.create!(user: dawei, video: futurama, rating: 2, content: "This movie is not so good!")

QueueItem.create!(user: dawei, video: monk, position: 1)
QueueItem.create!(user: dawei, video: futurama, position: 2)
QueueItem.create!(user: dawei, video: south_park, position: 3)
