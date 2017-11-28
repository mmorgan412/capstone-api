class AddWeightColumnToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :weight, :integer
  end
end
