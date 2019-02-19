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
              address: " Vincom Center Hà Nội, Tầng 6, Toà,
                191 đường Bà Triệu, Lê Đại Hành, Hai Bà Trưng, Hà Nội"
)
Cinema.create!(name: "Lotte Cinema - Landmark",
              address: "Keangnam Hanoi Landmark Tower, Phạm Hùng, Mễ Trì,
                Cầu Giấy, Hà Nội"
)
Cinema.create!(name: "BHD Star",
              address: "Vincom Center, 2 Phạm Ngọc Thạch,
                Kim Liên, Đống Đa, Hà Nội"
)

p "Create user"
User.create!(name: "Test Account",
            email: "test@gmail.com",
            password: "123456",
            password_confirmation: "123456",
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
end
