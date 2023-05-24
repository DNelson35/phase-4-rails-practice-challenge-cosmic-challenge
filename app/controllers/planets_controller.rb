class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[ show update destroy ]

  # GET /planets
  def index
    planets = Planet.all

    render json: planets
  end

  def show 
    planet = Planet.find(params[:id])
    render json: planet
  end

  def create 
    planet = Planet.create!(planet_params)
    render json: planet
  end

  def update
    planet = Planet.find(parmas[:id])
    planet.update!(planet_params)
    render json: planet
  end

  def destroy
    planet = Planet.find(params[:id])
    planet.destroy
    headers :no_content
  end

  private

  def planet_params
    params.permit(:id,:name,:distance_from_earth,:nearest_star,:image)
  end

end
