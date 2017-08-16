require 'rails_helper'

feature 'User can sign out' do
  scenario 'when they are signed in' do
    login_helper
    visit root_path
    click_link 'Logout'
    expect(page).to have_no_link 'Logout'
  end
end
