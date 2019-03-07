class User < ApplicationRecord
    has_secure_password
    has_many :hosted_spaces, class_name: "Space", foreign_key: 'host_id'
    has_many :bookings, foreign_key: 'guest_id'
    has_many :spaces, through: :bookings
    
    validates :email, uniqueness: true
    validates_format_of :first_name, with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
    validates_format_of :last_name, with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
    
    validates_with EmailAddress::ActiveRecordValidator, field: :email

    def booked_spaces
        bookings = self.bookings.map{|booking| {id: booking.id, start: booking.start, end: booking.end, space: booking.space, dates: booking.dates}}
        bookings
    end

    def reset_reward
        self.update(reward: false)
    end

    def refund_reward
        self.update(reward: true)
    end

end
