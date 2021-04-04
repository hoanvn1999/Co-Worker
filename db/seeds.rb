# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
myself = User.new(email: "hoanvn1999@gmail.com",
                      phone_number: "+84 77 540 0703",
                      full_name: "Pham Le Hoan",
                      address: "Da Nang",
                      date_of_birth: "01-01-1998",
                      role: 1,
                      institution_id: rand(1..10),
                      activated: true,
                      password: "hoan@123",
                      password_confirmation: "hoan@123")
myself.avatar.attach(io: File.open("app/assets/images/avatars/myself.png"),
                         filename: "myself.jpg", content_type: "image/png")
myself.save

20.times do |n|
  user = User.new(email: "example-#{n+1}@example.com",
                  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
                  full_name: Faker::Name.name,
                  address: ["Da Nang", "Ha Noi", "HCM"].sample,
                  date_of_birth: Faker::Date.between(from: "1980-09-23", to: "2014-09-25"),
                  role: [0, 1, 2].sample,
                  institution_id: rand(1..10),
                  activated: true,
                  password: "hoan@123",
                  password_confirmation: "hoan@123")
  user.avatar.attach(io: File.open("app/assets/images/avatars/#{n}.jpg"),
                         filename: "avatar#{n}.jpg", content_type: "image/jpg")
  user.save
end

74.times do |n|
  space = Space.new(user_id: rand(1..5),
                    name: Faker::Company.name,
                    address: Faker::Address.full_address,
                    area: rand(10..30),
                    price: rand(15..100),
                    description: Faker::Lorem.paragraphs)
  space.space_image.attach(io: File.open("app/assets/images/spaces/cw-#{n+1}.jpg"),
                           filename: "space-#{n+1}.jpg", content_type: "image/jpg")
  space.map.attach(io: File.open("app/assets/images/spaces/map.jpg"),
                   filename: "map-#{n+1}.jpg", content_type: "image/jpg")
  space.save
  5.times do |s|
    Position.create!(space_id: n+1,
                     code: "SP-#{n+1}-#{s+1}")
  end
end
