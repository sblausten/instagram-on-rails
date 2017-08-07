require 'rails_helper'

feature 'Edit post' do
  before :each do
    post = create(:post)
    login_helper
    visit root_path
    click_link("Edit")
  end
  scenario 'should let user change photo and description' do
    fill_in "Description", with: "Edited post"
    click_button "Update Post"
    expect(page).to have_content "Edited post"
    expect(page).to have_content "Post updated."
  end
  scenario "should let user try again if they don't change anything" do
    click_button "Update Post"
    expect(page).to have_content "Test image"
  end
  scenario "won't update a post without an image" do
    attach_file('Image', Rails.root + 'spec/factories/test.zip')
    click_button 'Update Post'
    expect(page).to have_content("There was a problem with your edit. Please try again.")
  end
end
