require 'spec_helper'
require 'rails_helper'

feature 'the signup process', type: :feature do
  background :each do
      visit new_user_url
  end

  scenario 'has a new user page' do
    expect(page).to have_content("Sign up")
  end

  feature 'signing up a user' do

    scenario 'shows username on the homepage after signup' do
      fill_in "Username", with: "Todd"
      fill_in "Password", with: "123456"
      click_button "Create User"

      expect(page).to have_content("Todd"))
    end
  end
end

feature 'logging in' do
  background visit new_session_url

  scenario 'shows username on the homepage after login' do
    fill_in "Username", with: "Todd"
    fill_in "Password", with: "123456"
    click_button "Log In"
    
  end
end

feature 'logging out' do
  scenario 'begins with a logged out state'

  scenario 'doesn\'t show username on the homepage after logout'

end
