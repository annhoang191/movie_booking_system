p "Create movies"
10.times do |n|
  Movie.create!(title: FFaker::Movie.unique.title,
    director: FFaker::Name.name,
    description: FFaker::Lorem.paragraph[0..15],
    duration: 2.5,
    genre: ["drama", "comedy", "action"])
end

p "Create cinemas"
Cinema.create!(name: "CGV",
  address: " Vincom Center Hà Nội, Tầng 6, Toà, 191 đường Bà Triệu, Lê Đại Hành, Hai Bà Trưng, Hà Nội"
)
Cinema.create!(name: "Lotte Cinema - Landmark",
  address: "Keangnam Hanoi Landmark Tower, Phạm Hùng, Mễ Trì, Cầu Giấy, Hà Nội"
)
Cinema.create!(name: "BHD Star",
  address: "Vincom Center, 2 Phạm Ngọc Thạch, Kim Liên, Đống Đa, Hà Nội"
)

p "Create  user"
User.create(email: "test@gmail.com",
            password: '123456',
            password_confirmation: '123456',
            phone_number:"23843928",
            confirmed_at: Time.now.utc)

p "Create auditoria"
Auditorium.create!(cinema_id: 1,
  name: "IMAX",
  seat_capacity: 400)
Auditorium.create!(cinema_id: 1,
  name: "2D Normal",
  seat_capacity: 200)
Auditorium.create!(cinema_id: 2,
  name: "2D",
  seat_capacity: 200)
Auditorium.create!(cinema_id: 2,
  name: "3D",
  seat_capacity: 300)
Auditorium.create!(cinema_id: 3,
  name: "2D",
  seat_capacity: 200)

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
