# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: 'starwars@mail.com', username: 'starwars', role: 'admin',
                   password: 'test@123', password_confirmation: 'test@123')

user = User.create(email: 'tony@mail.com', username: 'tony', role: 'developer', 
                   password: 'test@123', password_confirmation: 'test@123')

user = User.create(email: 'stark@mail.com', username: 'stark', role: 'developer',
                   password: 'test@123', password_confirmation: 'test@123')

user = User.create(email: 'spark@mail.com', username: 'spark', role: 'developer',
                    password: 'test@123', password_confirmation: 'test@123')
