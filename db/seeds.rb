admin = User.create({name: 'admin', email: 'admin@gmail.com', password: 'asd123!',
  password_confirmation: "asd123!", })
admin.admin!
admin.skip_confirmation!
admin.save

equip1 = Equipment.create({name: "Wifi"})
equip2 = Equipment.create({name: "プール"})
equip3 = Equipment.create({name: "ジム"})
equip4 = Equipment.create({name: "温泉"})

room1 = Room.create({room_type: "シングル", bed_numbers: 1, guest_no: 1})
room2 = Room.create({room_type: "ダブル", bed_numbers: 1, guest_no: 2})
room3 = Room.create({room_type: "ツイン", bed_numbers: 2, guest_no: 2})
room4 = Room.create({room_type: "トリプル", bed_numbers: 2, guest_no: 3})
image_data = Rails.root.join("app/assets/images/hotel.jpg").open

# 30.times do |n|
#     motel = Motel.create! name: Faker::Restaurant.name,
#     address: Faker::Address.full_address,
#     description: Faker::Lorem.paragraph(50),
#     phone: Faker::Number.number(11).to_i,
#     level: Faker::Number.within(0..5),
#     zone: Faker::Address.state,
#     images: [image_data]
#     HotelEquip.create motel_id: motel.id, equipment_id: 1, price: 10
#     HotelEquip.create motel_id: motel.id, equipment_id: 2, price: 10
#     HotelEquip.create motel_id: motel.id, equipment_id: 3, price: 10
#
#     HotelRoom.create motel_id: motel.id, room_id: 1, price: 5000
#     HotelRoom.create motel_id: motel.id, room_id: 2, price: 5000
#     HotelRoom.create motel_id: motel.id, room_id: 3, price: 5000
#     HotelRoom.create motel_id: motel.id, room_id: 4, price: 5000
# end
img1 = Rails.root.join("app/assets/images/a1.jpg").open
img2 = Rails.root.join("app/assets/images/a2.jpg").open
img3 = Rails.root.join("app/assets/images/a3.jpg").open
img4 = Rails.root.join("app/assets/images/a4.jpg").open
img5 = Rails.root.join("app/assets/images/a5.jpg").open
img6 = Rails.root.join("app/assets/images/a6.jpg").open
img7 = Rails.root.join("app/assets/images/a7.jpg").open
img8 = Rails.root.join("app/assets/images/a8.jpg").open

Motel.create! name: "Lotte Hotel Hanoi", address: "54 Lieu Giai, Ba Dinh, Ha Noi, Vietnam", description: Faker::Lorem.paragraph(50), phone: Faker::Number.number(10).to_i, level: Faker::Number.within(0..5), zone: "Ha Noi", images: [img1, img2, img3]
Motel.create! name: "Hanoi Daewoo Hotel", address: "360 Kim Ma, Ba Dinh, Ha Noi, Vietnam", description: Faker::Lorem.paragraph(50), phone: Faker::Number.number(10).to_i, level: Faker::Number.within(0..5), zone: "Ha Noi", images: [img4]
Motel.create! name: "JW Marriott Hotel Hanoi", address: "8 Do Duc Duc, Me Tri, Nam Tu Liem, Trung Hoa Nhan Chinh, Ha Noi, Vietnam", description: Faker::Lorem.paragraph(50), phone: Faker::Number.number(10).to_i, level: Faker::Number.within(0..5), zone: "Ha Noi", images: [img5]
Motel.create! name: "Grand Plaza Hanoi Hotel", address: "117 Tran Duy Hung, Cau Giay, Ha Noi, Vietnam", description: Faker::Lorem.paragraph(50), phone: Faker::Number.number(10).to_i, level: Faker::Number.within(0..5), zone: "Ha Noi", images: [img6]
Motel.create! name: "Silverland Charner", address: "87-89-91 Ho Tung Mau, Quan 1, Ho Chi Minh, Vietnam", description: Faker::Lorem.paragraph(50), phone: Faker::Number.number(10).to_i, level: Faker::Number.within(0..5), zone: "Ha Noi", images: [img7]
Motel.create! name: "FLC Luxury Hotel Samson", address: "Quang Cu Commune, Sam Son Hamlet, Thanh Hoa, Vietnam", description: Faker::Lorem.paragraph(50), phone: Faker::Number.number(10).to_i, level: Faker::Number.within(0..5), zone: "Ha Noi", images: [img8]

HotelEquip.create motel_id: 1, equipment_id: 1, price: 10
HotelEquip.create motel_id: 1, equipment_id: 2, price: 10
HotelEquip.create motel_id: 1, equipment_id: 3, price: 10

HotelRoom.create motel_id: 1, room_id: 1, price: 5000
HotelRoom.create motel_id: 1, room_id: 2, price: 5000
HotelRoom.create motel_id: 1, room_id: 3, price: 5000
HotelRoom.create motel_id: 1, room_id: 4, price: 5000

HotelEquip.create motel_id: 2, equipment_id: 1, price: 10
HotelEquip.create motel_id: 2, equipment_id: 2, price: 10
HotelEquip.create motel_id: 2, equipment_id: 3, price: 10

HotelRoom.create motel_id: 2, room_id: 1, price: 5000
HotelRoom.create motel_id: 2, room_id: 2, price: 5000
HotelRoom.create motel_id: 2, room_id: 3, price: 5000
HotelRoom.create motel_id: 2, room_id: 4, price: 5000

HotelEquip.create motel_id: 3, equipment_id: 1, price: 10
HotelEquip.create motel_id: 3, equipment_id: 2, price: 10
HotelEquip.create motel_id: 3, equipment_id: 3, price: 10

HotelRoom.create motel_id: 3, room_id: 1, price: 5000
HotelRoom.create motel_id: 3, room_id: 2, price: 5000
HotelRoom.create motel_id: 3, room_id: 3, price: 5000



#
# HotelEquip.create motel_id: 4, equipment_id: 1, price: 30
# HotelEquip.create motel_id: 4, equipment_id: 2, price: 20
#
# HotelRoom.create motel_id: 4, room_id: 1, price: 5000
# HotelRoom.create motel_id: 4, room_id: 2, price: 5000
# HotelRoom.create motel_id: 4, room_id: 3, price: 25000
# HotelRoom.create motel_id: 4, room_id: 4, price: 35000
#
# HotelEquip.create motel_id: 5, equipment_id: 2, price: 10
# HotelEquip.create motel_id: 5, equipment_id: 2, price: 10
# HotelEquip.create motel_id: 5, equipment_id: 3, price: 10
#
# HotelRoom.create motel_id: 5, room_id: 1, price: 5000
# HotelRoom.create motel_id: 5, room_id: 2, price: 5000
# HotelRoom.create motel_id: 5, room_id: 3, price: 5000
# HotelRoom.create motel_id: 5, room_id: 4, price: 5000
#
# HotelEquip.create motel_id: 6, equipment_id: 1, price: 20
# HotelEquip.create motel_id: 6, equipment_id: 2, price: 90
# HotelEquip.create motel_id: 6, equipment_id: 3, price: 40
#
# HotelRoom.create motel_id: 6, room_id: 1, price: 15000
# HotelRoom.create motel_id: 6, room_id: 2, price: 25000
# HotelRoom.create motel_id: 6, room_id: 3, price: 35000
# HotelRoom.create motel_id: 6, room_id: 4, price: 45000

30.times do |n|
  user = User.create!({name: Faker::FunnyName.name, email: Faker::Internet.email , password: 'asd123!',
    password_confirmation: "asd123!", })
  user.skip_confirmation!
  user.save
end

10.times do |n|
  review = Review.create({title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph(50),
   user_id: Faker::Number.unique.within(0..10), motel_id: Faker::Number.within(0..2), rate: Faker::Number.within(0..5)})
end

10.times do |n|
  like = Like.create({user_id: Faker::Number.unique.within(1..10), review_id: Faker::Number.within(1..10)})
end

50.times do |n|
  comment = Comment.create({user_id: Faker::Number.within(1..10), review_id: Faker::Number.within(1..10), content: Faker::Lorem.paragraph(10)});
end
UserHotel.create user_id: 3, motel_id: 1
UserHotel.create user_id: 3, motel_id: 2
UserHotel.create user_id: 3, motel_id: 3
UserHotel.create user_id: 1, motel_id: 1
UserHotel.create user_id: 1, motel_id: 2
UserHotel.create user_id: 1, motel_id: 3
UserHotel.create user_id: 2, motel_id: 1
UserHotel.create user_id: 2, motel_id: 2
UserHotel.create user_id: 2, motel_id: 3
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each {|followed| user.follow(followed)}
followers.each {|follower| follower.follow(user)}
