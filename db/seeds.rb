
AdminUser.create!(email: 'mobile@gmail.com', password: 'admin123', password_confirmation: 'admin123')if Rails.env.development?