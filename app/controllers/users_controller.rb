class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
    redirect_to user_path(current_user)
    end
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(current_user), notice: "会員の情報が更新されました"
    else
      render edit_user_path
    end
  end

  def followings
    user = User.find(params[:trainer_id])
    @trainers = user.followings
  end

  private

  def user_params
    params.require(:user).permit(:email, :image)
  end

end
