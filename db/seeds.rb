# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Event.destroy_all
Attendance.destroy_all


5.times do |index|
    event = Event.create(start_date: Faker::Date.forward(days: 350),duration: Faker::Number.between(from: 1, to: 10),title: Faker::String.random(length: 5..10),description: Faker::String.random(length: 20..25),price:"150",location: Faker::Address.city ,administrator: User.find(rand(23..24)))
    attendance = Attendance.create(participant: User.find(rand(23..24)),event: event)
end


