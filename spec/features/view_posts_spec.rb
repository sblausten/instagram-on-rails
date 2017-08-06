require 'rails_helper'

feature 'homepage' do
  scenario 'should show all posted images and descriptions' do
    post_one = create(:post, description: "First image")
    post_two = create(:post, description: "Second image")
    login_helper
    visit root_path
    expect(page).to have_content "First image"
    expect(page).to have_content "Second image"
    expect(page).to have_css("img[src*='test_image.jpg']")
  end
end
