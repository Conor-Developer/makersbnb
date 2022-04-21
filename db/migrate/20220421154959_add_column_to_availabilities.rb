class AddColumnToAvailabilities < ActiveRecord::Migration[7.0]
  def change
    add_column :availabilities, :property_id, :integer
  end
end
