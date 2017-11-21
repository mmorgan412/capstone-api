class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :license_number
      t.string :breed
      t.string :insurance_info
      t.string :vet

      t.timestamps
    end
  end
end
