require 'rails_helper'

describe 'create post' do
  it 'should create a new post with image and description' do
    visit new_post_path
    attach_file("Image", Rails.root + "spec/factories/test_image.jpg")
    fill_in 'Description', with: "Test image"
    click_button 'Create Post'
    expect(page).to have_content "Success!"
    expect(page).to have_content "Test image"
    expect(page).to have_css("img[src*='test_image.jpg']")
  end
end
