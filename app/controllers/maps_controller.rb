class MapsController < ApplicationController
  def new
    @map = Map.new
    @maps = Map.all
    @trainer = current_trainer
  end

  def index
    @trainer = current_trainer
    @map = Map.new
       # クエリ検索が空だったら
    if params[:q].blank?
      @maps = Map.all
    else
      # クエリ検索でアドレスの情報を持ったmapを探す
      @maps = Map.where(address: params[:q])
    end
  end

  def show
    @map = Map.find(params[:id])
  end

  def create
    map = Map.new(map_params)
    map.trainer_id = current_trainer.id
    if map.save
      redirect_to maps_path, notice: "ジムが登録されました"
    else
      redirect_to request.referer
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
