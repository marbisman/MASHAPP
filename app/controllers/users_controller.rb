class UsersController < ApplicationController
  def index
      @users = User.all
      @user = User.new
    end

  def create
    spotify_auth
  end

  def show
    @user = User.find_by_id(params[:id])
      if (current_user != @user)
        flash[:error] = 'Stop Hacking!'
      end
  end

  def failure
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :password)
  end

end
