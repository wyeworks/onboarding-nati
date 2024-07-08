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
class Flight < ApplicationRecord
  validates :gates, length: { is: 2 }
  validates :indirect_flights, length: { minimum: 2 }
  validates :indirect_flight_id, absence: true

  has_many :direct_flights, class_name: "DirectFlight", foreign_key: "indirect_flight_id"
  belongs_to :indirect_flights, class_name: "IndirectFlight", optional: true

  has_and_belongs_to_many :gates
end
