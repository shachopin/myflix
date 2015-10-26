# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


category1 = Category.create!(name: "Romantic Comedy");
category2 = Category.create!(name: "Action Thriller");

Video.create!(title: "Deep Impact", description: "Wow, a gret movie", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category2)
Video.create!(title: "Air Force 1", description: "Stunning", small_cover_url: "/tmp/family_guy.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category2)
Video.create!(title: "Notebook", description: "I cried", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category1)
yesman = Video.create!(title: "Yes Man", description: "Must see", small_cover_url: "/tmp/south_park.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category1)
Video.create!(title: "Deep Impact", description: "Wow, a gret movie", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category2)
Video.create!(title: "Air Force 1", description: "Stunning", small_cover_url: "/tmp/family_guy.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category2)
Video.create!(title: "Notebook", description: "I cried", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category1)
Video.create!(title: "Yes Man", description: "Must see", small_cover_url: "/tmp/south_park.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category1)
Video.create!(title: "Deep Impact", description: "Wow, a gret movie", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category2)
Video.create!(title: "Air Force 1", description: "Stunning", small_cover_url: "/tmp/family_guy.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category2)
Video.create!(title: "Notebook", description: "I cried", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category1)
Video.create!(title: "Yes Man", description: "Must see", small_cover_url: "/tmp/south_park.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category1)
Video.create!(title: "Deep Impact", description: "Wow, a gret movie", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category2)
Video.create!(title: "Air Force 1", description: "Stunning", small_cover_url: "/tmp/family_guy.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category2)
Video.create!(title: "Notebook", description: "I cried", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category1)
Video.create!(title: "Yes Man", description: "Must see", small_cover_url: "/tmp/south_park.jpg", large_cover_url: "/tmp/monk_large.jpg", category: category1)

dawei = User.create!(email: "test@example.com", password: "123", full_name: "Dawei Dai")

Review.create!(user: dawei, video: yesman, rating: 5, content: "This is a really good movie!" )
Review.create!(user: dawei, video: yesman, rating: 2, content: "This movie is not so good!")