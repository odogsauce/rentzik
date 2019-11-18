# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new(email: "a@a.com", password: "azerty")
u.save
u = User.new(email: "b@b.com", password: "azerty", username:"bbb")
u.save

i = Instrument.new(description: "violon", category: "cordes", unit_price: 10, user: u)
i.save
i = Instrument.new(description: "trompette", category: "vents", unit_price: 10, user: u)
i.save
i = Instrument.new(description: "batterie", category: "percussions", unit_price: 10, user: u)
i.save


b = Booking.new(begin_at: Date.new(2019, 11, 11), end_at: Date.new(2019, 12, 01), user: User.last, instrument: Instrument.last, status: 0)
b.save
b = Booking.new(begin_at: Date.new(2020, 01, 11), end_at: Date.new(2020, 12, 01), user: User.last, instrument: Instrument.last, status: 0)
b.save
