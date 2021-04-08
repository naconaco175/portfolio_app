class PagesController < ApplicationController
  def index
    @ramen = current_user.ramens.build if user_signed_in?
    @ramens = Ramen.all.order(created_at: :desc).page(params[:page]).per(30)
    @ramen_lanking = Ramen.includes(:like_users).sort {|a,b| b.like_users.size <=> a.like_users.size}
  end

  def show
  end
end
