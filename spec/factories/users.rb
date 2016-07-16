FactoryGirl.define do
  factory :active_user do
    name { Faker::Name.name }
    uid { Faker::Number.number(10) }
    image_url { Faker::Avatar.image("my-own-slug", "50x50", "jpg") }
  end
end
