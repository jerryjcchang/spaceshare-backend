class Booking < ApplicationRecord
    belongs_to :space
    belongs_to :guest, class_name: 'User', foreign_key: 'guest_id'
    validates :space_id, :guest_id, :start, :end, presence: true
    
    def space
        Space.find(self.space_id)
    end
    
    def dates
        (self.start..self.end).map{|date| date}
    end

end
