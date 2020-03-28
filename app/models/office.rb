class Office < ApplicationRecord
  belongs_to :cpt_code
  belongs_to :clinician
end
