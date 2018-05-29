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
    if @mooring.user == admin
      @mooring.save
      redirect_to moorings_path
    else
      redirect_to moorings_path
      alert("You can't do that")
    end
  end

  def destroy
    if @mooring.user = admin
      @mooring = Mooring.find(params[:id])
      @mooring.destroy
      redirect_to dashboard_path
    end

    private

    def mooring_params
      params.require(:mooring).permit(:location)
    end
  end
