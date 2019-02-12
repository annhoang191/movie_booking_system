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
  Seat.create!(auditorium_id: 2,
    row: row,
    number: 1..10)
end
("F".."J").each do |row|
  Seat.create!(auditorium_id: 2,
    row: row,
    number: 1..20)
end
("K".."L").each do |row|
  Seat.create!(auditorium_id: 2,
    row: row,
    number: 1..25)
end

("A".."E").each do |row|
  Seat.create!(auditorium_id: 2,
    row: row,
    number: 1..10)
end
("F".."G").each do |row|
  Seat.create!(auditorium_id: 2,
    row: row,
    number: 1..25)
end
("H".."L").each do |row|
  Seat.create!(auditorium_id: 2,
    row: row,
    number: 1..20)
end

p "Create seat 300"
("A".."E").each do |row|
  Seat.create!(auditorium_id: 4,
    row: row,
    number: 1..14)
end
("F".."M").each do |row|
  Seat.create!(auditorium_id: 4,
    row: row,
    number: 1..15)
end
("N".."O").each do |row|
  Seat.create!(auditorium_id: 4,
    row: row,
    number: 1..16)
end
("P".."R").each do |row|
  Seat.create!(auditorium_id: 4,
    row: row,
    number: 1..26)
end

p "Create seat 400"
("A".."E").each do |row|
  Seat.create!(auditorium_id: 1,
    row: row,
    number: 1..10)
end
("F".."K").each do |row|
  Seat.create!(auditorium_id: 1,
    row: row,
    number: 1..12)
end
("L".."O").each do |row|
  Seat.create!(auditorium_id: 1,
    row: row,
    number: 1..14)
end
("P".."T").each do |row|
  Seat.create!(auditorium_id: 1,
    row: row,
    number: 1..26)
end
("U".."X").each do |row|
  Seat.create!(auditorium_id: 1,
    row: row,
    number: 1..23)
end
