class PlantImage < ApplicationRecord
  belongs_to :plant, inverse_of: :plant_images
  mount_uploader :image_upload, PlantImageUploader

  def get_display_title
    self.plant.display_title
  end
end
