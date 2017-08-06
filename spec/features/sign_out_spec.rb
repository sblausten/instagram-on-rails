require 'rails_helper'

feature 'User signs out' do
  scenario 'user signed in' do
    user = create :user
    login_as user, :scope => :user
    visit root_path
    click_link 'Logout'
    expect(page).to have_text 'Signed out successfully.'
    expect(page).to have_no_link 'Logout'
    expect(page).to have_current_path root_path
  end
end
