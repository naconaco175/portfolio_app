class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all.page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
    @ramens = @user.ramens.order(created_at: :desc).page(params[:page]).per(30)
    @liked_ramens = @user.like_ramens.order(created_at: :desc).page(params[:page]).per(30)
  end
end