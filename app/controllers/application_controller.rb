class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


   protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image, :age, :gender, :activity_area, :training_history, :teaching_history, :qualification, :session_fee, :biography])
  end
end
