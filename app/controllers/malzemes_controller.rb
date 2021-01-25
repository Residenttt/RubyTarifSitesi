class MalzemesController < ApplicationController

  before_action :set_malzeme, only: [:show, :update, :edit]
  include Pagy::Backend

  def index
    @pagy, @malzemes = pagy(Malzeme.all, items: 10)
  end

  def new

  end

  def create

  end

  def update

  end

  def show

  end

  private
  def set_malzeme
    @malzeme = Malzeme.find(params[:id])
  end
end