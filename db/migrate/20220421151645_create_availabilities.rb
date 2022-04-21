class CreateAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :property_availability do |t|
      t.date :date
      t.boolean :availability
      t.boolean :confirmation_pending?
    end
  end
end
