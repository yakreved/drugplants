class CreateDeases < ActiveRecord::Migration
  def change
    create_table :deases do |t|
      t.string :name
      t.text :discription

      t.timestamps
    end
  end
end
