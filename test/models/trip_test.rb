# == Schema Information
#
# Table name: trips
#
#  id            :integer          not null, primary key
#  flight_number :integer
#  type          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
