class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    favorite = Favorite.where(user_id: current_user.id).pluck(:blog_id)
    @favorite_list = Blog.find(favorite)
  end

  def destroy
    @user = User.destroy(params[:id])
    redirect_to new_user_path
  end
end
