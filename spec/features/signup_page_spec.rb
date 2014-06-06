require 'spec_helper'

feature "new user page" do

	scenario "page has the right title" do
		visit new_user_path
		expect(page).to have_title("Sign Up")
	end

  scenario 'user can create an account' do
  	visit new_user_path

  	fill_in 'email', with: 'email@email.com'
  	fill_in 'password', with: "PASSWORDYEAH!"
  	fill_in 'password_confirmation', with: "PASSWORDYEAH!"
  	click_button 'Create Account'

  	expect(page).to have_content 'email@email.com'
  end
end