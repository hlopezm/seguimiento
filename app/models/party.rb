class Party < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :results
end
