# == Schema Information
#
# Table name: gates
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  airport_id :integer          not null
#
# Indexes
#
#  index_gates_on_airport_id  (airport_id)
#
# Foreign Keys
#
#  airport_id  (airport_id => airports.id)
#
class Gate < ApplicationRecord
  belongs_to :airport
end
