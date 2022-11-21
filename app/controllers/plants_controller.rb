class PlantsController < ApplicationController
  def create
    plant = Plant.create(plant_params)
    render json: plant
  end

  def destroy
    plant = Plant.find(params[:id])
    plant.destroy
    render json: plant
  end

  def index
    plants = Plant.all
    render json: plants
  end

  def show
    plant = Plant.find(params[:id])
    render json: plant
  end

  def update
    plant = Plant.find(params[:id])
    plant.update(plant_params)
    render json: plant
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image, :description, :price)
  end
end
