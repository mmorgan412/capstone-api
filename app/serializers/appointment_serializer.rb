class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :description, :cost, :notes, :pet_id
end
