require 'rails_helper'

feature 'create post' do
  scenario 'should create a new post with image and description' do
    login_helper
    visit new_post_path
    attach_file("Image", Rails.root + "spec/factories/test_image.jpg")
    fill_in 'Description', with: "Test image"
    click_button 'Create Post'
    expect(page).to have_content "Success!"
    expect(page).to have_content "Test image"
    expect(page).to have_css("img[src*='test_image.jpg']")
  end
  scenario 'needs an image to create a post' do
    login_helper
    visit new_post_path
    fill_in 'Description', with: "No picture"
    click_button 'Create Post'
    expect(page).to have_content("You need to add an image.")
  end
end
