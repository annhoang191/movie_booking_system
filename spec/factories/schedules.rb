FactoryBot.define do
  factory :schedule do
    start_time Time.now 1
    end_time Time.now + 3600
    movie_id 1
    auditorium_id 1
  end
end
