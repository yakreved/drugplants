class CreateContraindicationsMethodOfUses < ActiveRecord::Migration
  def change
    create_table :contraindications_method_of_uses do |t|
      t.integer  "method_of_use_id"
      t.integer  "contraindication_id"
      t.timestamps
    end
  end
end
