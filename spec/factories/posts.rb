FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "This is a post"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "This is a second post"
    user
  end
end
