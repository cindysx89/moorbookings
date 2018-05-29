class MooringsController < ApplicationController

  def index
    @moorings = Moorings.all
  end

  def show
    @mooring = Mooring.find(params[:id])
  end

  def new
    @mooring = Mooring.new
  end

  def create
    @mooring = Mooring.save
    @mooring.user = admin
    if @mooring.save
      redirect_to moorings_path
    else
      render :new
    end
  end

  def destroy
    @mooring.user = admin
    @mooring = Mooring.find(params[:id])
    @mooring.destroy
    redirect_to dashboard_path
  end

  private

  def mooring_params
    params.require(:mooring).permit(:location)
  end

end
