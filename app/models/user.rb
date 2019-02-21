class User < ApplicationRecord
    has_secure_password
    has_many :hosted_spaces, class_name: "Space", foreign_key: 'host_id'
    has_many :bookings, foreign_key: 'guest_id'
    has_many :spaces, through: :bookings
    
    validates :email, uniqueness: true
    validates_format_of :first_name, with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
    validates_format_of :last_name, with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
    
    validates_with EmailAddress::ActiveRecordValidator, field: :email
end
