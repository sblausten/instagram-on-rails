FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    password 'testing'
  end
  factory :post do
    description 'Test image'
    image Rack::Test::UploadedFile.new(Rails.root +
      'spec/factories/test_image.jpg', 'image/jpg')
  end
end
