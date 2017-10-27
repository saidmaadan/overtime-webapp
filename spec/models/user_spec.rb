require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryGirl.create(:user)
  end
  describe "creation" do
    it "user can be created" do
      expect(@user).to be_valid
    end
  end

  describe "validation" do

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

    it "require the phone attributes to only contain integers " do
      @user.phone = 'hjfkfirnft'
      expect(@user).to_not be_valid
    end

    it "require the phone attributes to only have 10 characters " do
      @user.phone = '456688999900'
      expect(@user).to_not be_valid
    end
  end

  describe "custom name method" do
    it "has a full name method " do
      expect(@user.full_name).to eq("SAID, FOLA")
    end
  end
end
