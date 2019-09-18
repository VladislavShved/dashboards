# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(email: 'test@test.com', password: 'test@test.com', password_confirmation: 'test@test.com')

Dashboard.create(text: 'Test 1', order: 0, user: user)
Dashboard.create(text: 'Test 2', order: 1, user: user)
Dashboard.create(text: 'Test 3', order: 2, user: user)
Dashboard.create(text: 'Test 4', order: 3, user: user)
Dashboard.create(text: 'Test 5', order: 4, user: user)
Dashboard.create(text: 'Test 6', order: 5, user: user)
