require 'rails_helper'

feature 'View individual post' do
  scenario 'when clicking on a post in the feed' do
    post_1 = create(:post, description: "First image")
    post_2 = create(:post, description: "Second image")
    login_helper
    visit root_path
    find(:xpath, "//a[@href='/posts/1']").click
    expect(page.current_path).to eq post_path(post_1)
  end
end
