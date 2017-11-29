class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :license_number, :breed, :insurance_info, :vet, :url
end
