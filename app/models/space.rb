class Space < ApplicationRecord
    belongs_to :host, class_name: 'User', foreign_key: 'host_id'
    has_many :listings
    has_many :bookings
    has_many :guests, through: :bookings
    has_many :spaces_features
    has_many :features, through: :spaces_features
    
    def features_list
        self.features.map{|feature| feature.name}
    end

end
