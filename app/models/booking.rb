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

    def change_points(days)
        guest = self.guest
        points = self.guest.points
        points_to_add = self.space.daily_rate * 10 * days
        self.guest.update(points: points + points_to_add)
    end

    def remove_points
        guest = self.guest
        points = self.guest.points
        points_to_subtract = self.space.daily_rate * 10
        self.guest.update(points: points - points_to_subtract)
    end

end
