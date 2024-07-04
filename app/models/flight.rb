# == Schema Information
#
# Table name: trips
#
#  id            :integer          not null, primary key
#  flight_number :integer
#  type          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Flight < Trip
    has_one :plane
    has_many :crew_members
end
