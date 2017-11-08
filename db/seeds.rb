puts "Start seeding"

# users
user = User.create(email: "test_user_1@gmail.com", password: "password_1")

# Profile
profile = Profile.create(first_name: "first_name_test_1", last_name: "last_name_test_1", user_id: user.id )

# Host
host = Host.create(profile_id: profile.id, bank_account: "BE50 1000 1000 1000")

# Camp_site
campsite = CampSite.create(host_id: host.id, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)
campsite = CampSite.create(host_id: host.id, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)
campsite = CampSite.create(host_id: host.id, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)
campsite = CampSite.create(host_id: host.id, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)
campsite = CampSite.create(host_id: host.id, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)
campsite = CampSite.create(host_id: host.id, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)
campsite = CampSite.create(host_id: host.id, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)
campsite = CampSite.create(host_id: host.id, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)
campsite = CampSite.create(host_id: host.id, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)
campsite = CampSite.create(host_id: host.id, title: "title_test_2", description: "description_test_2", capacity: 25, category: "category_test_2", address: "address_test_2", picture: "picture_test_2", price: 10)



# Booking
booking = Booking.create(profile_id: profile.id, host_id: host.id, camp_site_id:campsite.id)
# Booking.create(profile_id: 2, host_id: 1, camp_site_id:1)
# Booking.create(profile_id: 2, host_id: 1, camp_site_id:1)
# Booking.create(profile_id: 2, host_id: 1, camp_site_id:1)
# Booking.create(profile_id: 1, host_id: 1, camp_site_id:1)
# Booking.create(profile_id: 1, host_id: 1, camp_site_id:1)
# Booking.create(profile_id: 2, host_id: 1, camp_site_id:1)
# Booking.create(profile_id: 2, host_id: 1, camp_site_id:1)
# Booking.create(profile_id: 1, host_id: 1, camp_site_id:1)

puts "Finished seeding"
