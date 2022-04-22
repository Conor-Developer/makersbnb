class CreateAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :availabilities do |t|
      t.date :date
      t.boolean :available?
      t.boolean :confirmation_pending?
    end
  end
end
