# == Schema Information
#
# Table name: monuments
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  url         :string
#  user_id     :integer
#  address     :string
#  city        :string
#  zip_code    :integer
#  lat         :float
#  lng         :float
#  category_id :integer
#

class Monument < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :town

  validates :user_id, presence: true

  before_create :set_longitude_latitude
  before_update :set_longitude_latitude

  delegate :name, to: :category, prefix: true, allow_nil: true
  delegate :name, to: :town, prefix: true, allow_nil: true

  def full_address
    "#{ address}, #{city} #{zip_code}"
  end

  def set_longitude_latitude
    a = Geokit::Geocoders::GoogleGeocoder.geocode full_address
    self.lat = a.lat
    self.lng = a.lng
  end
end
