# == Schema Information
#
# Table name: tickets
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Ticket < ApplicationRecord
    has_one :seat
    belongs_to :passenger
end
