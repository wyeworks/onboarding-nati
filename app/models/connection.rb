# == Schema Information
#
# Table name: trips
#
#  id            :integer          not null, primary key
# TODO: verificar si es una buena idea borrar la linea del flight number en lugar de ponerlo null
#  type          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Connection < Trip
end
