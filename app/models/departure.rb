# == Schema Information
#
# Table name: departures
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Departure < ApplicationRecord
    belongs_to :trip
    has_one :airport
end
