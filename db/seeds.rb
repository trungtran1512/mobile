User.create!(name:  "Example User",
             email: "example@gmail.com",
             password:              "admin123",
             password_confirmation: "admin123",
             admin: true)
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@gmail.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end