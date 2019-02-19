namespace :name_task do
  desc "Create seats 300"
  task faker_seats_300: :environment do
    p "Create seat 300"
    ("A".."E").each do |row|
      14.times.each do |n|
        Seat.create! auditorium_id: 4, row: row, number: n
      end
    end
    ("F".."M").each do |row|
      15.times.each do |n|
        Seat.create! auditorium_id: 4, row: row, number: n
      end
    end
    ("N".."O").each do |row|
      16.times.each do |n|
        Seat.create! auditorium_id: 4, row: row, number: n
      end
    end
    ("P".."R").each do |row|
      26.times.each do |n|
        Seat.create! auditorium_id: 4, row: row, number: n
      end
    end
  end
end
