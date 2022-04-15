class TrainersController < ApplicationController

  def index
    @trainers = Trainer.all
    @trainer = current_trainer
    @user = current_user
    @map = Map.new
    @maps = Map.all
    # 値が渡ってくればパラムスを返し、elseの場合nullを返す
    if params[:gender].present?
      gender = "gender = '#{params[:gender]}'"
    else
      gender = "gender is not null"
    end

    if params[:age].present?
      age = "age = '#{params[:age]}'"
    else
      age = "age is not null"
    end

    if params[:activity_area].present?
      activity_area = "activity_area = '#{params[:activity_area]}'"
    else
      activity_area = "activity_area is not null"
    end

    if params[:teaching_history].present?
      teaching_history = "teaching_history = '#{params[:teaching_history]}'"
    else
      teaching_history = "teaching_history is not null"
    end

    if params[:strong_part].present?
      strong_part = "strong_part = '#{params[:strong_part]}'"
    else
      strong_part = "strong_part is not null"
    end


    @search = Trainer.where("#{gender} AND #{age} AND #{activity_area} AND #{teaching_history} AND #{strong_part}" )

  end

  def show
    @trainer = Trainer.find(params[:id])
    @date = {"GOOD" => @trainer.likers.count, "BAD    " => @trainer.baders.count }
    @user = current_user
    @photo = Photo.new
    @photos = Photo.where(trainer_id: @trainer.id).all
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
      redirect_to trainer_path(current_trainer), notice: "プロフィールが更新されました"
    else
      redirect_to edit_trainer_path
    end
  end

  private
  def trainer_params
    params.require(:trainer).permit(
    :email,
    :name,
    :biography,
    :guidance_content,
    :image)
    .merge(activity_area: params[:trainer][:activity_area].to_i)
    .merge(gender: params[:trainer][:gender].to_i)
    .merge(age: params[:trainer][:age].to_i)
    .merge(session_fee: params[:trainer][:session_fee].to_i)
    .merge(training_history: params[:trainer][:training_history].to_i)
    .merge(teaching_history: params[:trainer][:teaching_history].to_i)
    .merge(qualification: params[:trainer][:qualification].to_i)
    .merge(strong_part: params[:trainer][:strong_part].to_i)
  end

end
