class OfficeSerializer < ActiveModel::Serializer
  attributes :id, :city, :name, :state, :street, :phone, :zip, :clinician_id, :cpt_code_id
  has_one :cpt_code
  has_one :clinician
end
