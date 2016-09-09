class PlantsController < ApplicationController

	def index
	end

	def show
	end

	def new
  	end

  	def create
  		render plain: params[:plant].inspect
  	end

  	def edit
  	end

  	def delete
  	end


end
