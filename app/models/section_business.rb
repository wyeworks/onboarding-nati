# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  plane_id   :integer          not null
#
# Indexes
#
#  index_sections_on_plane_id  (plane_id)
#
# Foreign Keys
#
#  plane_id  (plane_id => planes.id)
#
class SectionBusiness < Section
end
