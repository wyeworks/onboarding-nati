# == Schema Information
#
# Table name: planes
#
#  id         :integer          not null, primary key
#  capacity   :integer
#  model      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Plane < ApplicationRecord
    has_many :seats
    belongs_to :flight
end
