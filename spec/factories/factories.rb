FactoryGirl.define do
  factory :user do |u|
    u.user_name 'tester'
    u.sequence(:email) { |n| "test#{n}@test.com"}
    u.password 'testing'
  end
  factory :post do
    description 'Test image'
    image Rack::Test::UploadedFile.new(Rails.root +
      'spec/factories/test_image.jpg', 'image/jpg')
    user
  end
end
