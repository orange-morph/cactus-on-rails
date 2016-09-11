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
				:source,
				:acquired_date,
        :grown_from_seed,
				:planted_date,
				:age_when_acquired_months,
				:pot_type,
				:pot_size,
				:repotted_date,
				:next_repotting_date,
				:care_notes,
        :notes,
        plant_images: [],
        plant_images_attributes: [:id, :plant_id, :image_upload]
    )
  end

end
