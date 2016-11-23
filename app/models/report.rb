class Report < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :cities
end
