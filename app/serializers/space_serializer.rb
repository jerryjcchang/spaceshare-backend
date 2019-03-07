class SpaceSerializer < ActiveModel::Serializer
  # has_many :users
  has_many :features
  attributes :id, :name, :street_address, :city, :state, :zip, :lat, :long, :daily_rate, :promo, :description, :features_list, :host_id, :img_url, :img_url2, :img_url3, :img_url4
end
