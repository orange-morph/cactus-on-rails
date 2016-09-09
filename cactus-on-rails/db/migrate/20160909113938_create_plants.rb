class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :type
      t.string :genus
      t.string :species
      t.string :common_name
      t.boolean :grown_from_seed
      t.text :notes

      t.timestamps
    end
  end
end
