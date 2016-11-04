class City < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_and_belongs_to_many :tours
  validates_presence_of :name
end
