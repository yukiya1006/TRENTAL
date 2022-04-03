class MapsController < ApplicationController
   def index
        @maps = Map.all
        @map = Map.new
    end

    def show
      @map = Map.find(params[:id])
    end

    def create
        map = Map.new(map_params)
        map.trainer_id = current_trainer.id
        if map.save
            redirect_to maps_path(@map), notice: "You have created book successfully."
        else
            redirect_to :action => "index"
        end
    end

    def destroy
        map = Map.find(params[:id])
        map.destroy
        redirect_to action: :index
    end

    private
    def map_params
    params.require(:map).permit(:address, :body, :trainer_id, :latitude, :longitude)
    end
end
