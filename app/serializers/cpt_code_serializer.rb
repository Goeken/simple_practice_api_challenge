class CptCodeSerializer < ActiveModel::Serializer
  attributes :id, :description, :duration, :rate, :call_to_book, :clinician_id
end
