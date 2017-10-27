require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = FactoryGirl.create(:user)
      #@user = User.create(email: "test@example.com", password: "password", password_confirmation: "password", first_name: 'Said', last_name: 'Fola')
    end
    it "user can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created without first_name" do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without last_name" do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without phone number" do
      @user.phone = nil
      expect(@user).to_not be_valid
    end
  end

  describe "custom name method" do
    it "has a full name method " do
      expect(@user.full_name).to eq("SAID, FOLA")
    end
  end
end
