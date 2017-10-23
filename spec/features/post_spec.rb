require "rails_helper"

describe "navigate" do
  describe 'post homepage' do
    it "can be reached successfully" do
      visit posts_path
      expect(page.status_code).to eq(200)
    end

    it "has a title of Posts" do
      visit posts_path
      expect(page).to have_content(/Posts/)
    end
  end

  describe "creation" do
    before do
      user = User.create(email: "test@example.com", password:
                          "password", password_confirmation: "password",
                          first_name: 'Said', last_name: 'Fola'
                          )
    end
    it "has a new form tha that cab be reach" do
      visit new_post_path
      expect(page.status_code).to eq 200
    end

    it "can be created from new form page" do
      visit new_post_path

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
