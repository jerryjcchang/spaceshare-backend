class BookingSerializer < ActiveModel::Serializer
  # belongs_to :guest
  # belongs_to :space
  attributes :id, :guest_id, :dates, :space
  

end
