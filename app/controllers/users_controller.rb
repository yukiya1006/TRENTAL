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
      redirect_to user_path(current_user), notice: "プロフィールが更新されました"
    else
      render edit_user_path
    end
  end

  def followings
    user = User.find(params[:trainer_id])
    @trainers = user.followings
  end

  def withdrawal
    @user = current_user
    @user = User.find(params[:id])
    # is_deletedカラムをtrueに変更することにより削除フラグを立てる
    @user.update(is_user_deleted: true)
    sign_out
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  def unsubscribe
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end

end
