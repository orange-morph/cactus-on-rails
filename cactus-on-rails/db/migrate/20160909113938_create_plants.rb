class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :plant_type
      t.string :genus
      t.string :species
      t.string :common_name
      t.string :source
      t.date :acquired_date
      t.boolean :grown_from_seed
      t.date :planted_date
      t.integer :age_when_acquired_months
      t.string :pot_type
      t.string :pot_size
      t.text :care_notes
      t.date :repotted_date
      t.date :next_repotting_date
      t.text :notes

      t.timestamps
    end
  end
end
