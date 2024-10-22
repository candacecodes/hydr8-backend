class WaterCupsController < ApplicationController
    def index 
        watercups = WaterCup.all 
        render json: watercups
    end 

    def show 
        watercup = WaterCup.find_by_id(params[:id]) 
        render json: watercup
    end 

    def new 
        watercup = WaterCup.new
    end 

    def create 
        watercup = WaterCup.new(amount: params["amount"], user_id: params["user_id"])
        watercup.save 
        render json: watercup 
    end 

    def update
        watercup = WaterCup.find_by(id: params[:id])
        watercup.update(amount: params["amount"])
        render json: watercup
    end

    def destroy
        watercup = WaterCup.find_by(id: params[:id])
        watercup.delete
        render json: watercup
    end 

end

def watercup_params
    params.require(:watercup).permit(:amount,)
end