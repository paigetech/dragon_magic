require 'spec_helper'

describe "The homepage" do

	it "has a sign up button" do
		visit root_path
		expect(page).to have_link("Sign Up")
	end

	it "links to the sign up page" do
		visit root_path
		click_link('Sign Up')

		expect(current_path).to eq new_user_path
	end
end