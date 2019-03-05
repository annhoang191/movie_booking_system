FactoryBot.define do
  factory :movie do
    title FFaker::Movie.unique.title
    director FFaker::Name.name
    description FFaker::Lorem.paragraph[0..15]
    duration 2.5
    genre ["drama", "comedy", "action"]
  end
end
