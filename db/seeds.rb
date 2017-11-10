require 'faker'

# cleaning database
puts "cleaning started"

User.destroy_all
Profile.destroy_all
Host.destroy_all
CampSite.destroy_all

# cleaning finished
puts "cleaning finished"


puts "Start seeding first profile"

# user n°1 who is a host
user = User.create(
  email: "reginalddewasseige@gmail.com",
  password: "password")

profile = Profile.create(
  first_name: "Reginald",
  last_name: "de Wasseige",
  gender: "Male",
  birth_date: "November 18, 1990",
  user_id: user.id,
  remote_photo_url: 'http://res.cloudinary.com/dwuowqi7r/image/upload/v1510307634/uvj61qklprcafvsjpz86.jpg'
  )

host = Host.create(
  profile_id: profile.id,
  bank_account: "BE50 1000 1000 1000"
  )

campsite = CampSite.create(
  host_id: host.id,
  title: "Plaine au soleil",
  description: "Lorem ipsum dolor sit amet, ne purto duis offendit cum, est cu elitr vidisse, suscipit copiosae lucilius ea nam. Ne atqui primis facilisis pri, dictas delectus imperdiet vim id. Cu oblique abhorreant nam, mei ne docendi ancillae. Volumus praesent pro no. Cu vel modus mandamus, fabellas reprehendunt ex vim. Ferri ullum et eam, quo an affert dicant.",
  capacity: 25,
  category: "Plaine",
  address: "Rue General Wangermee 12",
  zip_code: 1040,
  city: "Etterbeek",
  country: "Belgium",
  photo_urls: %w[http://res.cloudinary.com/dwuowqi7r/image/upload/v1510307702/texucg3kwvc5er4n53ko.jpg],
  price: 10
  )

campsite = CampSite.create(
  host_id: host.id,
  title: "Plaine en pente",
  description: "Lorem ipsum dolor sit amet, ne purto duis offendit cum, est cu elitr vidisse, suscipit copiosae lucilius ea nam. Ne atqui primis facilisis pri, dictas delectus imperdiet vim id. Cu oblique abhorreant nam, mei ne docendi ancillae. Volumus praesent pro no. Cu vel modus mandamus, fabellas reprehendunt ex vim. Ferri ullum et eam, quo an affert dicant.",
  capacity: 50,
  category: "Plaine",
  address: "Rue de la Faucille 65",
  zip_code: 1970,
  city: "Wezembeek-Oppem",
  country: "Belgium",
  photo_urls: %w[http://res.cloudinary.com/dwuowqi7r/image/upload/v1510307702/texucg3kwvc5er4n53ko.jpg],
  price: 35
  )

puts "Finished first profile"

puts "Start seeding second profile"

# user n°2 who is a host
user = User.create(
  email: "heinendiogo@gmail.com",
  password: "password")

profile = Profile.create(
  first_name: "Diogo",
  last_name: "Heinen",
  gender: "Male",
  birth_date: "July 18, 1995",
  user_id: user.id,
  remote_photo_url: 'http://res.cloudinary.com/dwuowqi7r/image/upload/v1510316002/15349608_10211787749714438_5694984024833450952_n_rvh0wt.jpg'
  )

puts "Finished second profile"

puts "Start seeding third profile"

# user n°3 who is a host
user = User.create(
  email: "carmenlongo@hotmail.com",
  password: "password")

profile = Profile.create(
  first_name: "Carmen",
  last_name: "Longo",
  gender: "Female",
  birth_date: "December 19, 1993",
  user_id: user.id,
  remote_photo_url: 'http://res.cloudinary.com/dwuowqi7r/image/upload/v1510320075/advxnjqcguiyspa2mtiu.jpg'
  )

puts "Finished third profile"

# faker

puts 'Creating db through FAKER...'
10.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "password")

  profile = Profile.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    gender: "Female",
    birth_date: Faker::Date.birthday(18, 65),
    user_id: user.id,
    remote_photo_url: 'http://res.cloudinary.com/dwuowqi7r/image/upload/v1510327416/marc_hqaduf.jpg'
    )

  host = Host.create(
    profile_id: profile.id,
    bank_account: Faker::Bank.iban("be"),
    )

  campsite = CampSite.create(
    host_id: host.id,
    title: Faker::Beer.hop,
    description: "Lorem ipsum dolor sit amet, ne purto duis offendit cum, est cu elitr vidisse, suscipit copiosae lucilius ea nam. Ne atqui primis facilisis pri, dictas delectus imperdiet vim id. Cu oblique abhorreant nam, mei ne docendi ancillae. Volumus praesent pro no. Cu vel modus mandamus, fabellas reprehendunt ex vim. Ferri ullum et eam, quo an affert dicant.",
    capacity: Faker::Number.number(2),
    category: "Plaine",
    address: Faker::Address.street_address,
    zip_code: Faker::Address.zip_code,
    city: Faker::Address.city,
    country: Faker::Address.country,
    photo_urls: %w[http://res.cloudinary.com/dwuowqi7r/image/upload/v1510307702/texucg3kwvc5er4n53ko.jpg],
    price: Faker::Number.number(4),
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
    )
  )
end
puts 'Finished!'

