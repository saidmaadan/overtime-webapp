FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "This is a post"
    overtime_request 3.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "This is a second post"
    overtime_request 0.5
    user
  end
end
