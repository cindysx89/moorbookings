class MooringsController < ApplicationController

  def index
    @moorings = Mooring.all
  end

  def show
    @mooring = Mooring.find(params[:id])
  end

end
