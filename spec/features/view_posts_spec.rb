require 'rails_helper'

feature 'Homepage' do
  scenario 'should show all posted images and descriptions' do
    user = login_helper
    post_one = create(:post, description: "First image", user: user)
    post_two = create(:post, description: "Second image", user: user)
    visit root_path
    expect(page).to have_content "First image"
    expect(page).to have_content "Second image"
    expect(page).to have_css("img[src*='test_image.jpg']")
  end
  scenario 'should show all posted images with usernames' do
    user = login_helper
    post_one = create(:post, description: "First image", user: user)
    post_two = create(:post, description: "Second image", user: user)
    visit root_path
    expect(page).to have_content "First image"
    expect(page).to have_content "tester"
    expect(page).to have_content "Second image"
    expect(page).to have_css("img[src*='test_image.jpg']")
  end
end
