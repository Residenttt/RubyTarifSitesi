class TariflersController < ApplicationController

  def index
    @tariflers = Tarifler.all
  end
end