class PlantsController < ApplicationController

	def index
		@plants = Plant.all
	end

	def show
		@plant = Plant.find(params[:id])
	end

	def new
  	end

  	def create
  		@plant = Plant.new(params.require(:plant).permit(:plant_type, :genus, :species, :common_name, :grown_from_seed, :notes))
  		@plant.save
  		redirect_to @plant
  	end

  	def edit
  	end

  	def delete
  	end


end
