require 'rails_helper'

describe "UserPages" do

  describe "New User Page" do
    it "has the right content" do
      visit new_user_path
      expect(page).to have_content("Users New")
    end

      describe "with valid information" do
        let (:submit) { "Create my account" }
        before do
          visit new_user_path
          fill_in "Name", with: "Example User"
          fill_in "Email", with: "user@example.com"
          fill_in "Password", with: "password"
          fill_in "Confirmation", with: "password"
        end
        it "should create a user" do
          expect { click_button submit }.to change(User, :count).by(1)
        end
      end
  end

end
