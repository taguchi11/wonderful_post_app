# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
  # super
  # binding.pry
    @user = User.new
  # binding.pry
  end

  # POST /resource
  def create
  #   super
    @user = User.new(configure_permitted_parameters)
    if @user.save
      sign_in(@user)
      redirect_to # 任意のパス
    else
      render 'new'
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end
  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end
  # # 入力フォームからアカウント名の情報をDB保存する
  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   "/user/#{current_user.id}"
  # end

  # サインイン
  # def after_sign_in_path_for(resource)
  #   "/user/#{current_user.id}"
  # end

  protected

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
