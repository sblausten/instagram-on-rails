require 'rails_helper'

feature 'User signs out' do
  scenario 'user signed in' do
    login_helper
    visit root_path
    click_link 'Logout'
    expect(page).to have_no_link 'Logout'
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end
