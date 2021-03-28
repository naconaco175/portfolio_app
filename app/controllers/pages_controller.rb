class PagesController < ApplicationController
  def index
    @ramen = current_user.ramens.build if user_signed_in?
    @ramens = Ramen.all.page(params[:page]).per(30)
  end

  def show
  end
end
