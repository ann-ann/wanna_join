FactoryGirl.define do
  factory :user do
    title { Faker::Name.title  }
    description { Faker::Lorem.sentence }
    date { Faker::Time.between(DateTime.now - 100, DateTime.now) }
    location { Faker::Address.city }
  end
end
