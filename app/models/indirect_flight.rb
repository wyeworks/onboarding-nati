# == Schema Information
#
# Table name: flights
#
#  id                 :integer          not null, primary key
#  flight_number      :integer
#  type               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  indirect_flight_id :integer
#  plane_id           :integer          not null
#
# Indexes
#
#  index_flights_on_indirect_flight_id  (indirect_flight_id)
#  index_flights_on_plane_id            (plane_id)
#
# Foreign Keys
#
#  indirect_flight_id  (indirect_flight_id => flights.id)
#  plane_id            (plane_id => planes.id)
#
class IndirectFlight < Flight
  validates :indirect_flights, length: { minimum: 2 }
end
