class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.text :description
      t.integer :family_id
      t.integer :region_id

      t.timestamps
    end
  end
end
