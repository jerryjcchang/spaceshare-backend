class Feature < ApplicationRecord
    has_many :spaces_features
    has_many :spaces, through: :spaces_features

end
