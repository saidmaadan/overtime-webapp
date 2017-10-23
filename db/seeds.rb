# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@user = User.create(email: "test@example.com", password:
                    "password", password_confirmation: "password",
                    first_name: 'Said', last_name: 'Fola'
                    )
puts "One user created"

20.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} Given HTML markup, this upgrade tool replaces the Bootstrap 3.x CSS.", user_id: @user.id)
end

puts "20 Posts has been created"
