class PlantsController < ApplicationController

	def index
		@plants = Plant.includes(:plant_images)
	end

	def show
		@plant = Plant.find(params[:id])
    @next_plant = @plant.next_plant
    @prev_plant = @plant.prev_plant
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
    @plant = Plant.find(params[:id])
    @plant.plant_images.build
    @plant_image = @plant.plant_images.new
	end

  def update
    @plant = Plant.find(params[:id])

    respond_to do |format|
      if @plant.update_attributes(plant_params)
        format.html { redirect_to(@plant) }
        format.json { respond_with_bip(@plant) }
      else
        format.html { render :action => "edit" }
        format.json { respond_with_bip(@plant) }
      end
    end

  end

	def destroy
    @plant = Plant.find(params[:id])
    @plant.plant_images.each do |file| 
      file.remove_image_upload!
    end
    @plant.destroy!
    redirect_to plants_path
	end

  private 

    def plant_params
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
          plant_images_attributes: [:id, :plant_id, :image_upload, :_destroy]
      )
    end

    def plant_image_params
      params.require(:plant_image).permit(
          :id,
          :plant_id,
          :image_upload
      )
    end

end
