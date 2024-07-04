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
require "test_helper"

class PlaneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
