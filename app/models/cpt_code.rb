class CptCode < ApplicationRecord
  belongs_to :clinician
  has_many :offices
end
