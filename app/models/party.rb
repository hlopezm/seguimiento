class Party < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :results
  belongs_to :partyable, polymorphic: true
end
