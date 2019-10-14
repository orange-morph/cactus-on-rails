class PlantImage < ApplicationRecord
  belongs_to :plant, inverse_of: :plant_images
  mount_uploader :image_upload, PlantImageUploader
  has_one :image_upload
  accepts_nested_attributes_for :image_upload

  def get_display_title
    self.plant.display_title
  end
end
