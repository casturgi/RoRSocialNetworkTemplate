# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


usernames_array = ["Sk8trBoi88", "PinkPiggy99", "LillyGilly67", "lolllllls", "ILuveLife"]
email_array = ["goodstudent1@gmail.com", "goodstudent2@gmail.com", "goodstudent3@gmail.com", "goodstuent4@gmail.com", "goodStudent5@gmail.com"]

5.times do |x|
	User.create(username: usernames_array[x], email: email_array[x], password: "password", password_confirmation: "password")
end
p "test users created"