class PlantImage < ApplicationRecord
  belongs_to :plant, inverse_of: :plant_images
  mount_uploader :image_upload, PlantImageUploader
end
