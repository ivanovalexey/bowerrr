5.times.map do
  User.create(
    {
      name: Faker::Name.name,
      birth_date: Faker::Date.between(40.years.ago, 30.years.ago)
    }
  )
end
