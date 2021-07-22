class PlantsController < ApplicationController
    def index
        render json: Plant.all
    end

    def show
        render json: set_plant
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def set_plant
        @plant = Plant.find(params[:id])
    end

    def plant_params
        params.permit(:name, :image, :price)
    end

end
