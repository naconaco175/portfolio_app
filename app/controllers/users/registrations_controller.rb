# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: [:create, :update]
  before_action :ensure_normal_user, only: [:destroy, :update]

  protected

    # アカウント編集後、プロフィール画面に移動する
    def after_update_path_for(resource)
      user_path(id: current_user.id)
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,        keys: [:name, :profile, %i(avatar)])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile, %i(avatar)])
    end

    def ensure_normal_user
      if resource.email == 'guest@example.com'
        redirect_to root_path, alert: 'ゲストユーザーは更新・削除できません。'
      end
    end
end
