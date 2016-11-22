class District < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :elections
  has_many :results, through: :elections
  has_many :cities, as: :cityable
  belongs_to :districtable, polymorphic: true
  validates_presence_of :type
end
