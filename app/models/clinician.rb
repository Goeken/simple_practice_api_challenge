class Clinician < ApplicationRecord
	has_many :cpt_codes
	has_many :offices
end
