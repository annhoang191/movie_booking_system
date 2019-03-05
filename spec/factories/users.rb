FactoryBot.define do
  factory :user do
    name "Testing Account"
    email "testing@gmail.com"
    password "foobar"
    password_confirmation "foobar"
    phone_number "23843928"
    confirmed_at Time.now.utc
  end
end
