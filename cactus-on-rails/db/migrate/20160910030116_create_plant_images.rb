class CreatePlantImages < ActiveRecord::Migration[5.0]
  def change
    create_table :plant_images do |t|
      t.belongs_to :plant, index: true
      t.string :image_upload

      t.timestamps
    end
  end
end
