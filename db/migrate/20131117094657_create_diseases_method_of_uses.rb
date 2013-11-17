class CreateDiseasesMethodOfUses < ActiveRecord::Migration
  def change
    create_table :diseases_method_of_uses do |t|
      t.integer :disease_id
      t.integer :method_of_use_id

      t.timestamps
    end
  end
end
