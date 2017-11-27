class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.string :description
      t.float :cost
      t.string :notes

      t.timestamps
    end
  end
end
