class CreateMethodOfUseDiseases < ActiveRecord::Migration
  def change
    create_table :method_of_use_diseases do |t|
      t.integer :method_of_use_id
      t.string :disease_id

      t.timestamps
    end
  end
end
