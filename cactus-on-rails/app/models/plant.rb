class Plant < ApplicationRecord
  has_many :plant_images, inverse_of: :plant
  accepts_nested_attributes_for :plant_images, :allow_destroy => true

  def display_title
    self.genus+" "+self.species+" ("+self.common_name+")"
  end

  def plant_types
    [
        ['Cactus', 'Cactus'],
        ['Caudiciform', 'Caudiciform'],
        ['Leaf Succulent', 'Leaf Succulent'],
        ['Root Succulent', 'Root Succulent'],
        ['Stem Succulent', 'Stem Succulent']
    ]
  end

  def pot_types
    [
        ['Plastic - standard', 'Plastic - standard'],
        ['Plastic - orchid', 'Plastic - orchid'],
        ['Terracotta - unglazed', 'Terracotta - unglazed'],
        ['Terracotta - glazed', 'Terracotta - glazed'],
        ['Ceramic', 'Ceramic'],
        ['Organic', 'Organic'],
        ['Metal', 'Metal'],
        ['Other', 'Other']
    ]
  end

  def pot_sizes
    [
        ['5cm', '5cm'],
        ['10cm', '10cm'],
        ['15cm', '15cm'],
        ['20cm', '20cm'],
        ['25cm', '25cm'],
        ['30cm', '30cm']
    ]
  end

  def pot_type_images
    {
        'Plastic - standard' => 'pot_plastic_standard.png',
        'Plastic - orchid' => 'pot_plastic_standard.png',
        'Terracotta - unglazed' => 'pot1.png',
        'Terracotta - glazed' => 'pot_terracotta_glazed.png',
        'Ceramic' => 'pot_ceramic.png',
        'Organic' => 'pot_bio.png',
        'Metal' => 'pot_other.png',
        'Other' => 'pot_unknown.png',
        nil => 'pot_unknown.png'
    }
  end

end
