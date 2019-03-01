class UserSerializer < ActiveModel::Serializer
  # has_many :spaces
  # has_many :bookings
  attributes :id, :email, :first_name, :last_name, :company, :city, :state, :phone, :bookings
end
