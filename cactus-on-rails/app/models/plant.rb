class Plant < ApplicationRecord
  has_many :plant_images, inverse_of: :plant
  accepts_nested_attributes_for :plant_images, :allow_destroy => true
end
