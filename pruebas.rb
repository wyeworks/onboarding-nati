Airport.create!

Gate.create!(airport: Airport.first)
Gate.create!(airport: Airport.first)
Gate.create!(airport: Airport.first)

Plane.create!

DirectFlight.create!(gates: [Gate.first, Gate.second], plane: Plane.first)
