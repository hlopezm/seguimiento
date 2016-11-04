class Tour < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_and_belongs_to_many :cities
  validates_presence_of :name
end
