class CreateMethodOfUses < ActiveRecord::Migration
  def change
    create_table :method_of_uses do |t|
      t.string :name
      t.text :description
      t.integer :plant_id
      t.integer :path_of_plant_id

      t.timestamps
    end
  end
end
