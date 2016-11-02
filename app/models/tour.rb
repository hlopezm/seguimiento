class Tour < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :cities
  validates_presence_of :name
end
