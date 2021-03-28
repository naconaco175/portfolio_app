class PagesController < ApplicationController
  def index
    @ramen = current_user.ramens.build if user_signed_in?
  end

  def show
  end
end
