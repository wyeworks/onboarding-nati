# == Schema Information
#
# Table name: planes
#
#  id         :integer          not null, primary key
#  capacity   :integer
#  make       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Plane < ApplicationRecord
  has_many :flights
end
