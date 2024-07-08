Airport.create!

Gate.create!(airport: Airport.first)
Gate.create!(airport: Airport.first)
Gate.create!(airport: Airport.first)

Plane.create!

DirectFlight.create!(gates: [Gate.first, Gate.second], plane: Plane.first)
DirectFlight.create!(gates: [Gate.second, Gate.third], plane: Plane.first)

IndirectFlight.create!(direct_flights: [DirectFlight.first, DirectFlight.second], gates: [Gate.first, Gate.third])

SectionBusiness.create!(plane: Plane.first)
SectionEconomy.create!(plane: Plane.first)

User.create!

FlightSeat.create!(user: User.first)

PlaneSeat.create!(section: SectionBusiness.first)
