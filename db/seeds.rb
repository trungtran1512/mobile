User.create!(name:  "Admin",
             email: "trungpro151224@gmail.com",
             password:              "admin123",
             password_confirmation: "admin123",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@gmail.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)

  users = User.order(:created_at).take(6)
  10.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.posts.create!(content: content) }
  end
end