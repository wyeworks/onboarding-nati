# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  name        :string
#  nationality :string
#  passaport   :string
#  phone       :integer
#  string      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class User < ApplicationRecord
  has_one :flight_seat
end
