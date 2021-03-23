# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: [:create, :update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

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

  protected

    # アカウント編集後、プロフィール画面に移動する
    def after_update_path_for(resource)
      user_path(id: current_user.id)
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,        keys: [:name, :profile, %i(image)])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile, %i(image)])
    end
end
