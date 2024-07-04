# == Schema Information
#
# Table name: arrivals
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Arrival < ApplicationRecord
    belongs_to :trip
    has_one :airport
end
