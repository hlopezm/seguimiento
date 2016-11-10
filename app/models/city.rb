class City < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_and_belongs_to_many :reports
  has_and_belongs_to_many :locals
  has_and_belongs_to_many :federals
end
