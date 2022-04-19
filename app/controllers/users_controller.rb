class UsersController < ApplicationController
  def index
    @book=Book.new
    @users=User.all()
  end

  def show
    @book=Book.new
    @user=User.find(params[:id])
    @books=@user.books
  end

  def edit
    @user=current_user
  end

  def update
    @user=current_user
    @user.update(user_params)
    redirect_to user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
