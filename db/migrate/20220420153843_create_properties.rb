class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |p|
      p.string :name
      p.string :description
      p.integer :price
    end
  end
end
