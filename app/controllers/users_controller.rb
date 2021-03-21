class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if params[:image]
      #データベースに保存するファイル名はユーザーのid.jpgとする
      @user.image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}",image.read)
    end
    if @user.save
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    #画像データが送信された場合
    if params[:image]
      #データベースに保存するファイル名はユーザーのid.jpgとする
      @user.image = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image}",image.read)
    end
    if @user.save
      redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name,
                                 :email,
                                 :image,
                                 :profile,
                                 :password,
                                 :password_confirmation)
  end
end
