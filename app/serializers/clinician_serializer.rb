class ClinicianSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :middle_name, :suffix, :phone 
end
