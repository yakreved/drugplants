class CreatePathOfPlants < ActiveRecord::Migration
  def change
    create_table :path_of_plants do |t|
      t.string :Name

      t.timestamps
    end
  end
end
