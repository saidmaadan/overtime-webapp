# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@user = User.create(email: "test@test.com", password:
                    "password", password_confirmation: "password",
                    first_name: 'User', last_name: 'One'
                    )
puts "One user created"

AdminUser.create(email: "admin@test.com", password: "password", password_confirmation: "password", first_name: 'Admin', last_name: 'User')

puts "One Adminuser created"
6.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} This upgrade tool replaces the Bootstrap 3.x CSS.", user_id: @user.id, overtime_request: 2.5)
end

puts "4 Posts has been created"
