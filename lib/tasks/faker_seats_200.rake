namespace :db do
  desc "Create seats 200"
  task faker_seats_200: :environment do
    p "Create seat 200"
    ("A".."E").each do |row|
      10.times.each do |n|
        Seat.create! auditorium_id: 2, row: row, number: n
      end
    end
    ("F".."J").each do |row|
      20.times.each do |n|
        Seat.create! auditorium_id: 2, row: row, number: n
      end
    end
    ("K".."L").each do |row|
      25.times.each do |n|
        Seat.create! auditorium_id: 2, row: row, number: n
      end
    end

    ("A".."E").each do |row|
      10.times.each do |n|
        Seat.create! auditorium_id: 3, row: row, number: n
      end
    end
    ("F".."G").each do |row|
      25.times.each do |n|
        Seat.create! auditorium_id: 3, row: row, number: n
      end
    end
    ("H".."L").each do |row|
      20.times.each do |n|
        Seat.create! auditorium_id: 3, row: row, number: n
      end
    end
  end
end
