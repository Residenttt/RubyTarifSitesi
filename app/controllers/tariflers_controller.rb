class TariflersController < ApplicationController
  include Pagy::Backend
  before_action :tarif_bul, only: [:show, :edit, :update]

  def index
    @pagy, @tariflers = pagy(Tarifler.all, items: 10)
  end

  def new
    @tarifler = Tarifler.new
  end

  def create
    @tarifler = Tarifler.new(tarifler_params)
    @tarifler.user = User.first
    if @tarifler.save
      redirect_to tarifler_path(@tarifler)
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update
    if @tarifler.update(tarifler_params)
      redirect_to tarifler_path(@tarifler)
    else
      render 'edit'
    end
  end

  def destroy
    Tarifler.find(params[:id]).destroy
    redirect_to tariflers_path
  end

  private
    def tarifler_params
      params.require(:tarifler).permit(:isim, :aciklama)
    end

  def tarif_bul
    @tarifler = Tarifler.find(params[:id])
  end
end