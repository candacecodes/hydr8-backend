class WaterCupsController < ApplicationController
    def index 
        watercup = WaterCup.all 
        render json: watercups
    end 
end
