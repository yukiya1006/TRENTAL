# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :valid_user, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

def valid_user
  @user = User.find_by(email: params[:user][:email])
  if @user
    if @user.valid_password?(params[:user][:password]) && (@user.is_user_deleted == false)
      flash[:notice] = "退会済みです。再度ご登録をしてご利用ください。"
      redirect_to new_user_registration_path
    else
      flash[:notice] = "項目を入力してください"
    end
  end
end

protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end


  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
