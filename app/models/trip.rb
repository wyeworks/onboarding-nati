# == Schema Information
#
# Table name: trips
#
#  id            :integer          not null, primary key
#  flight_number :integer          null
#  type          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Trip < ApplicationRecord
    validates flight_number, presence: false
end
