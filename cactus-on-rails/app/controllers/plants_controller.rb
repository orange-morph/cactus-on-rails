class PlantsController < ApplicationController

	def index
		@plants = Plant.includes(:plant_images)
	end

	def show
		@plant = Plant.find(params[:id])
	end

	def new
		@plant = Plant.new
		@plant.plant_images.build
    @plant_types = [
      ['Cactus', 'Cactus'], 
      ['Caudiciform', 'Cordiciform'], 
      ['Leaf Succulent', 'Leaf Succulent'],
      ['Root Succulent', 'Root Succulent'],
      ['Stem Succulent', 'Stem Succulent'],
    ]



	end

	def create
    @plant = Plant.new(plant_params)
    @plant.save!
		redirect_to @plant
	end

	def edit
	end

	def delete
	end

  private def plant_params
    params.require(:plant).permit(
        :id,
        :plant_type,
        :genus,
        :species,
        :common_name,
        :grown_from_seed,
        :notes,
        plant_images: [],
        plant_images_attributes: [:id, :plant_id, :image_upload]
    )
  end

end
