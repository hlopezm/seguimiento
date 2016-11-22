class Report < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :cities, as: :cityable
  has_many :districts, as: :districtable
end
