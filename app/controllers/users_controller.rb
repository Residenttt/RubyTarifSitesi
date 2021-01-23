class UsersController < ApplicationController
  include Pagy::Backend
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_same_user, only: [:edit, :update, :destroy]
  before_action :require_admin, only: [:destroy]

  def index
    @pagy, @users = pagy(User.all, items: 10)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    if !@user.admin?
      @user.destroy
      redirect_to users_path
    end
  end

    private
      def set_user
        @user = User.find(params[:id])
      end

      def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
      end

      def require_same_user
        if current_user != @user && !current_user.admin?
          redirect_to users_path
        end
      end

      def require_admin
        if logged_in? && !current_user.admin?
          redirect_to root_path
        end
      end

end