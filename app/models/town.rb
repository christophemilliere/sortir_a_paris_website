class Town < ApplicationRecord
  has_many :monuments
  translates :name, touch: true
end
