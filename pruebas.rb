Airport.create!

Gate.create!(airport: Airport.first)
Gate.create!(airport: Airport.first)
Gate.create!(airport: Airport.first)

Plane.create!

DirectFlight.create!(gates: [Gate.first, Gate.second], plane: Plane.first)

#TODO: pruebas de indirectflight

SectionBusiness.create!(plane: Plane.first)
SectionEconomy.create!(plane: Plane.first)

User.create!

FlightSeat.create!(user: User.first)

PlaneSeat.create!(section: SectionBusiness.first)
