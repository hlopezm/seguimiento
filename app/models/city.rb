class City < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :elections
  has_many :results, through: :elections
  belongs_to :report
  belongs_to :district
  belongs_to :cityable, polymorphic: true
end
