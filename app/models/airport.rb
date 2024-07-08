# == Schema Information
#
# Table name: airports
#
#  id                 :integer          not null, primary key
#  code               :integer
#  location_latitude  :float
#  location_longitude :float
#  name               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Airport < ApplicationRecord
  has_many :gates
end
