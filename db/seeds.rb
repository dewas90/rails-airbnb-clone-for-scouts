puts "Start seeding"

# users
User.create(email: "test_user_1@gmail.com", password: "test_user_1@gmail.com")
User.create(email: "test_user_2@gmail.com", password: "password_2")
User.create(email: "test_user_3@gmail.com", password: "password_3")

# Profile
Profile.create(first_name: "first_name_test_1", last_name: "last_name_test_1", user_id: 1 )
Profile.create(first_name: "first_name_test_2", last_name: "last_name_test_2", user_id: 2 )
Profile.create(first_name: "first_name_test_3", last_name: "last_name_test_3", user_id: 3 )

# Host
Host.create(profile_id: 1, bank_account: "BE50 1000 1000 1000")

# Camp_site
CampSite.create(host_id: 1, title: "title_test_1", description: "description_test_1", capacity: 25, category: "category_test_1", address: "address_test_1", picture: "picture_test_1", price: 10)
CampSite.create(host_id: 1, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)
CampSite.create(host_id: 1, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)
# Booking
Booking.create(profile_id: 1, host_id: 1, camp_site_id:1)
Booking.create(profile_id: 2, host_id: 1, camp_site_id:2)
Booking.create(profile_id: 2, host_id: 1, camp_site_id:1)
Booking.create(profile_id: 2, host_id: 1, camp_site_id:2)
Booking.create(profile_id: 1, host_id: 1, camp_site_id:1)
Booking.create(profile_id: 1, host_id: 1, camp_site_id:2)
Booking.create(profile_id: 2, host_id: 1, camp_site_id:1)
Booking.create(profile_id: 2, host_id: 1, camp_site_id:2)
Booking.create(profile_id: 1, host_id: 1, camp_site_id:1)

puts "Finished seeding"
