class YorumlarsController < ApplicationController
  before_action :require_user

  def create
    @tarifler = Tarifler.find(params[:tarifler_id])
    @yorumlar = @tarifler.yorumlars.build(yorumlar_params)
    @yorumlar.user = current_user
    if @yorumlar.save
      redirect_to tarifler_path(@tarifler)
    else
      redirect_back fallback_location: tarifler_path(@tarifler)
    end
  end

  private

  def yorumlar_params
    params.require(:yorumlar).permit(:aciklama)
  end
end

