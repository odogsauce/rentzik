
u = User.new(email: "a@a.com", password: "azerty", username:"aaa", owner:false)
u.save
u = User.new(email: "b@b.com", password: "azerty", username:"bbb", owner:true)
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
