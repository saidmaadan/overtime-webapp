FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "This is a post"
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "This is a second post"
  end
end
