class PhotosController < ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_path
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
    if @photo != current_trainer
    redirect_to photos_path
    end
  end

  def update
     @photo = current_trainer
    if @photo.update(photo_params)
      redirect_to photo_path(@photo.id), notice: "プロフィールが更新されました"
    else
      redirect_to edit_photo_path
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
    redirect_to photos_path
  end

  def index
    @photos = Photo.all()
  end

  def show
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :caption, :trainer_id)
  end
end
