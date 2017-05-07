class Town < ApplicationRecord
  has_many :monuments
  translates :name, touch: true


  def town
    Town.where.not(name: nil).inspect
  end
end
