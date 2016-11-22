class Result < ApplicationRecord

  belongs_to :party
  belongs_to :city
  belongs_to :district
  belongs_to :election
end
