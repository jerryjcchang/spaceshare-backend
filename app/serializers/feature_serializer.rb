class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url
  has_many :spaces
end
