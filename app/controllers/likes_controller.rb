class LikesController < ApplicationController
  before_action :set_ramen

  def create
    @like = Like.create(user_id: current_user.id, ramen_id: @ramen.id)
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, ramen_id: @ramen.id)
    @like.destroy
  end

private

  def set_ramen
    @ramen = Ramen.find(params[:ramen_id])
  end
end