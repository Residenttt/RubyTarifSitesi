class MalzemesController < ApplicationController

  before_action :set_malzeme, only: [:show, :update, :edit]
  before_action :require_admin, except: [:show, :index]
  include Pagy::Backend

  def index
    @pagy, @malzemes = pagy(Malzeme.all, items: 10)
  end

  def new
    @malzeme = Malzeme.new
  end

  def create
    @malzeme = Malzeme.new(malzeme_params)
    if @malzeme.save
      redirect_to malzeme_path(@malzeme)
    else
      render 'new'
    end
  end

  def update
    if @malzeme.update(malzeme_params)
      redirect_to malzeme_path(@malzeme)
    else
      render 'edit'
    end
  end

  def edit

  end

  def show

  end

  private
  def set_malzeme
    @malzeme = Malzeme.find(params[:id])
  end

  def malzeme_params
    params.require(:malzeme).permit(:name)
  end

  def require_admin
    if !logged_in? || (logged_in? and !current_user.admin? )
      redirect_to malzemes_path
    end
  end
end