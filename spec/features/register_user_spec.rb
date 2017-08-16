require 'rails_helper'

feature 'User registers', type: :feature do
  scenario 'with valid data' do
    visit new_user_registration_path
    fill_in 'User name', with: 'tester'
    fill_in 'Email', with: 's@s.com'
    fill_in 'Password', with: 'a123456'
    fill_in 'Password confirmation', with: 'a123456'
    click_button 'Sign up'
    expect(page.current_path).to eq root_path
    expect(page).to have_content 'Logout'
    expect(page).to have_text 'Welcome! You have signed up successfully.'
  end
  scenario 'with invalid data' do
    visit new_user_registration_path
    click_button 'Sign up'
    expect(page).to have_text "User name can't be blank"
    expect(page).to have_text "Email can't be blank"
    expect(page).to have_text "Password can't be blank"
    expect(page).to have_no_link 'Sign Out'
  end
end
