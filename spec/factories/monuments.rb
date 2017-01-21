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

FactoryGirl.define do
  factory :monument do
    name "MyString"
    description "MyText"
  end
end
