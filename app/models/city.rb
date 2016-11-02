class City < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :tour
  validates_presence_of :name
end
