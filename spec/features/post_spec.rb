require "rails_helper"

describe "navigate" do
  before do
    user = User.create(email: "test@example.com", password:
                        "password", password_confirmation: "password",
                        first_name: 'Said', last_name: 'Fola'
                        )
    login_as(user, :scope => :user)
  end

  describe 'index' do
    it "can be reached successfully" do
      visit posts_path
      expect(page.status_code).to eq(200)
    end

    it "has a title of Posts" do
      visit posts_path
      expect(page).to have_content(/Posts/)
    end

    it "has a list of posts" do
      post1 = Post.create(date: Date.today, rationale: "Post1")
      post2 = Post.create(date: Date.today, rationale: "Post2")
      visit posts_path

      expect(page).to have_content(/Post1|Post2/)

    end
  end

  describe "creation" do
    before do
      visit new_post_path
    end
    it "has a new form tha that cab be reach" do
      expect(page.status_code).to eq 200
    end

    it "can be created from new form page" do

      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "Post Software"
      click_on "Save"
      expect(page).to have_content("Post Software")
    end

    it 'will have a user associated with it' do

      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "My Post"
      click_on "Save"

      expect(User.last.posts.rationale).to eq("My Post")
    end
  end
end
