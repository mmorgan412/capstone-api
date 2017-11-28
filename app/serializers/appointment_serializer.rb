class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :description, :cost, :notes, :weight, :pet_id
end
