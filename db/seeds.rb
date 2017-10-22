# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} Given HTML markup, this upgrade tool replaces the Bootstrap 3.x CSS classes with Bootstrap 4.x classes. Additionally, this tool updates the structure of components like Navbar, Panel, List and others in accordance with the Bootstrap 4 Docs. See the complete Bootstrap 4 Migration Guide for the latest changes.")
end

puts "100 Posts has been created"
