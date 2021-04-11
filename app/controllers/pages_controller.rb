class PagesController < ApplicationController
  def index
    @ramen = current_user.ramens.build if user_signed_in?
    @ramens = Ramen.all.order(created_at: :desc).page(params[:page]).per(30)
    @ramen_lanking = Ramen.joins(:likes)
                     .group(:id)
                     .order('count(likes.ramen_id) desc')
                     .page(params[:page]).per(30)

  end

  def show
  end
end
