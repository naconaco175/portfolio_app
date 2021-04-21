class RamensController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]

  def show
    @ramen = Ramen.find(params[:id])
  end

  def new
    @ramen = Ramen.new
    # @list_soup = ["醤油", "味噌"]
  end

  def create
    @ramen = current_user.ramens.build(ramen_params)
    if @ramen.save
      flash[:success] = "投稿が完了しました"
      redirect_to root_url
    else
      render new_ramen_path
    end
  end

  def edit
    @ramen = Ramen.find(params[:id])
  end

  def update
    @ramen = Ramen.find(params[:id])
    if @ramen.update(ramen_params)
      flash[:success] = "投稿が更新されました"
      redirect_to ramen_path(@ramen)
    else
      render 'edit'
    end
  end

  def destroy
    Ramen.find(params[:id]).destroy
    flash[:success] = "投稿が削除されました"
    redirect_to root_url
  end

  def search
    if params[:store].present? or params[:product_name].present?
      @ramens = Ramen.where('store LIKE ?', "%#{params[:store]}%")
                     .where('product_name LIKE ?', "%#{params[:product_name]}%")
    else
      @ramens = Ramen.none
    end
  end

  private

    def ensure_correct_user
      unless Ramen.find(params[:id]).user.id.to_i == current_user.id
        flash[:notice] = "権限がありません"
        redirect_to root_path
      end
    end

    def ramen_params
      params.require(:ramen)
            .permit(:store, :comment, :product_name, :price, :photo, :genre, :evaluation, :taste, :volume, :noodle, :oily, :meat, :topping, :addictive, :service, :croweded, soup: [])
    end
end
