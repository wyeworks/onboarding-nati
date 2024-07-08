# == Schema Information
#
# Table name: seats
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  section_id :integer
#  user_id    :integer
#
# Indexes
#
#  index_seats_on_section_id  (section_id)
#  index_seats_on_user_id     (user_id)
#
# Foreign Keys
#
#  section_id  (section_id => sections.id)
#  user_id     (user_id => users.id)
#
class FlightSeat < Seat
  validates :section_id, absence: true
  belongs_to :user
end
