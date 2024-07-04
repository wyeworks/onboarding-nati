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
class Trip < ApplicationRecord
    has_one :airport, through: :arrival
    has_one :airport, through: :departure

    validates :flight_number, absence: true
end
