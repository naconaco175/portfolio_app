class PagesController < ApplicationController
  def index
    @ramen = current_user.ramens.build if user_signed_in?
    @ramens = Ramen.all.order(created_at: :desc).page(params[:page]).per(18)
    @ramen_lanking = Ramen.joins(:likes)
                     .group(:id)
                     .order('count(likes.ramen_id) desc')
                     .page(params[:page]).per(30)

  end

  def show
  end

  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to root_path, notice: "ログインしていただきありがとうございます！!"
  end
end
