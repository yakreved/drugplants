class CreateIndicationsMethodOfUses < ActiveRecord::Migration
  def change
    create_table :indications_method_of_uses do |t|
      t.integer  "method_of_use_id"
      t.integer  "indication_id"
      t.timestamps
    end
  end
end
