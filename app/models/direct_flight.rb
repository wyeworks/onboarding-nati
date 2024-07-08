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
#
# Indexes
#
#  index_flights_on_indirect_flight_id  (indirect_flight_id)
#
# Foreign Keys
#
#  indirect_flight_id  (indirect_flight_id => flights.id)
#
class DirectFlight < Flight
  validates :indirect_flight_id, presence: true
end
