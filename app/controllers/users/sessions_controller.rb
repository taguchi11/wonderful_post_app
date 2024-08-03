# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    binding.pry
    user =  User.find_by(email: sign_in_params[:email])
    binding.pry
    if user.two_factor_enabled
      return redirect_to users_two_factor_path
    end

    allow_params_authentication!
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    binding.pry
     devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
     binding.pry
  end
end
