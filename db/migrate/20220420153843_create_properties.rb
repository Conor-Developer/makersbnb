class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |p|
      p.string :name
    end
  end
end
