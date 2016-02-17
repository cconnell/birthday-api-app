100.times do
Birthday.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  birthdate: Faker::Date.backward(500000),
  gift: Faker::Book.title)

end