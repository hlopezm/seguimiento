class Report < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_and_belongs_to_many :cities
  has_many :locals
  has_many :federals
  validates_presence_of :nombre
end
