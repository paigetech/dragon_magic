require 'rails_helper'

describe "StaticPages" do
  describe "Home Page" do
  	it "links to the sign up page" do
  		visit root_path

  		click_link("Sign Up")

  		expect(page).to have_path(users_new_path)
  	end
  end

end
