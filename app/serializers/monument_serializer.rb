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

class MonumentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url, :address, :full_address, :location
  belongs_to :user

  def full_address
  "#{object.address} #{object.zip_code} #{object.city}"
  end

  def location
    {
      lng: object.lng,
      lat: object.lat
    }
  end
end
