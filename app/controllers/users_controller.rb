class UsersController < ApplicationController
  before_action :default_image

  def index
    @user = User.paginate(page: params[:page], per_page: 10)
  end

  def show
    # @user = User.find(params[:id])
    @user.image.save!
  end

  private
  def default_image
    @user = User.find(params[:id])
    if !@user.image.attached?
      self.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'event_default.png')), filename: 'default-image.png', content_type: 'image/png')
    end
  end
end
