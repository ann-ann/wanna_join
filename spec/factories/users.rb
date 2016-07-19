FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
  end

  factory :active_user, parent: :user  do
    email { Faker::Internet.email }
    uid { Faker::Number.number(10) }
    image_url { Faker::Avatar.image("my-own-slug", "50x50", "jpg") }
  end
end
