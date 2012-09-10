# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    foursquare_id { rand (10 ** 5) }
    name { Faker::Name.first_name }
    photo "http://playfoursquare.s3.amazonaws.com/userpix_thumbs/0QYGOJMDGLTJOOQG.jpg"

    trait :confirmed_email do
      email { Faker::Internet.email }
      confirmed_at { Time.now }
      confirmation_sent_at { 5.minutes.ago }
    end

    trait :unconfirmed_email do
      unconfirmed_email { Faker::Internet.email }
      confirmation_token { rand(10 ** 10) }
      confirmation_sent_at { 5.minutes.ago }
    end
  end
end
