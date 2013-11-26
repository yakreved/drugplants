class CreateContraindications < ActiveRecord::Migration
  def change
    create_table :contraindications do |t|
      t.string :name

      t.timestamps
    end
  end
end
