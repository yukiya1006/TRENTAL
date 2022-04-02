class TrainersController < ApplicationController
  def index
    @trainer = Trainer.all
  end

  def show
    @trainer = current_trainer
    gon.trainers = Trainer.all
  end

  def edit
    @trainer = Trainer.find(params[:id])
    if @trainer != current_trainer
    redirect_to trainer_path(current_trainer)
    end
  end

  def update
    @trainer = current_trainer
    if @trainer.update(trainer_params)
      redirect_to trainer_path(@trainer), notice: "プロフィールが更新されました"
    else
      render "edit"
    end
  end

  def map
  results = Geocoder.search(params[:address])
  @latlng = results.first.coordinates
  # これでmap.js.erbで、経度緯度情報が入った@latlngを使える。
  end
  
  def map
  # respond_to以下の記述によって、
  # remote: trueのアクセスに対して、
  # map.js.erbが変えるようになります。
  respond_to do |format|
    format.js
  end
  end

  respond_to do |format|
    format.js
  end

  private
  def trainer_params
    params.require(:trainer).permit(
    :email,
    :name,
    :biography,
    :image,
    :email, :postal_code, :prefecture_code, :city, :street, :other_address)
    .merge(activity_area: params[:trainer][:activity_area].to_i)
    .merge(gender: params[:trainer][:gender].to_i)
    .merge(age: params[:trainer][:age].to_i)
    .merge(rental_price: params[:trainer][:rental_price].to_i)
  end

end
