FactoryGirl.define do
  sequence :email do |n|
    'test#{n}@example.com'
  end
  factory :user do
    first_name 'Said'
    last_name 'Fola'
    email {generate :email}
    password 'password'
    password_confirmation 'password'
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { generate :email}
    password 'password'
    password_confirmation 'password'
  end
end
