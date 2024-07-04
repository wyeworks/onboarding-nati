# == Schema Information
#
# Table name: seats
#
#  id         :integer          not null, primary key
#  category   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Seat < ApplicationRecord
    belongs_to :plane
    belongs_to :ticket
end
