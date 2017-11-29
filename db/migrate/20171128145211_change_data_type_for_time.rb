class ChangeDataTypeForTime < ActiveRecord::Migration[5.1]
  def change
    change_column :appointments, :time, :string
  end
end
