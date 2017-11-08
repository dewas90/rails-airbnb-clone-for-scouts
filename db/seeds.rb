puts "Start seeding"

# users
user = User.create(email: "reginald@test.com", password: "reginald")
profile = Profile.create(first_name: "reginald", last_name: "de wasseige", user_id: user.id )
host = Host.create(profile_id: profile.id, bank_account: "BE50 1000 1000 1000")

user = User.create(email: "carmen@test.com", password: "carmen")
profile = Profile.create(first_name: "carmen", last_name: "longo", user_id: user.id )

user = User.create(email: "carmen@test.com", password: "carmen")
profile = Profile.create(first_name: "carmen", last_name: "longo", user_id: user.id )

user = User.create(email: "yass@test.com", password: "carmen")
profile = Profile.create(first_name: "yass", last_name: "barona", user_id: user.id )

# Camp_site
campsite = CampSite.create(host_id: host.id, title: "Plaine au soleil", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", capacity: 25, category: "Plaine", address: "Wallonia", picture: "", price: 10)
campsite = CampSite.create(host_id: host.id, title: "Plaine ou il fait bon vivre", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", capacity: 25, category: "Plaine", address: "Wallonia", picture: "", price: 10)
campsite = CampSite.create(host_id: host.id, title: "Instagram", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", capacity: 25, category: "Plaine", address: "Wallonia", picture: "", price: 10)

# Booking
booking = Booking.create(profile_id: profile.id, host_id: host.id, camp_site_id:campsite.id)

puts "Finished seeding"
