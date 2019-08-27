# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
  e = Event.create(name: "event-#{i + 1}", date: rand(10).months.from_now)
  e.save
end
10.times do |i|
  u = User.create(name: "user-#{i + 1}", email: "user-#{i + 1}@mail.com")
  u.save
end
events = Event.all
events.each do |e|
  e.tickets.build(ticket_type: 'first class', quantity: rand(200)).save
  e.tickets.build(ticket_type: 'second class', quantity: rand(200)).save
  e.tickets.build(ticket_type: 'student discount', quantity: rand(200)).save
end
