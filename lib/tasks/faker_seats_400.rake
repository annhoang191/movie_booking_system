namespace :db do
  desc "Create seats 400"
  task faker_seats_400: :environment do
    p "Create seat 400"
    ("A".."E").each do |row|
      10.times.each do |n|
        Seat.create! auditorium_id: 1, row: row, number: n
      end
    end
    ("F".."K").each do |row|
      12.times.each do |n|
        Seat.create! auditorium_id: 1, row: row, number: n
      end
    end
    ("L".."O").each do |row|
      14.times.each do |n|
        Seat.create! auditorium_id: 1, row: row, number: n
      end
    end
    ("P".."T").each do |row|
      26.times.each do |n|
        Seat.create! auditorium_id: 1, row: row, number: n
      end
    end
    ("U".."X").each do |row|
      23.times.each do |n|
        Seat.create! auditorium_id: 1, row: row, number: n
      end
    end
  end
end
