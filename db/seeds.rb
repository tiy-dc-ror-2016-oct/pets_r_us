# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


rand(1..1000).times do
  owner = Owner.create(
    full_name: FFaker::Name.name,
    email: FFaker::Internet.email,
    blood_type: FFaker::IdentificationESCO.blood_type,
    ssn: FFaker::IdentificationESCO.id,
    phone_number: FFaker::PhoneNumber.phone_number
  )

  rand(1..5).times do
    owner.pets.create(
      name: FFaker::Book.genre,
      born_on: FFaker::Time.date,
      breed: ["poodle", "mutt"].sample,
      species: ["dog", "cat", "chicken"].sample,
      image_url: FFaker::Avatar.image
    )
  end
end
