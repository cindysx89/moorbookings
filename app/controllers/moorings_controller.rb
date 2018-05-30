class MooringsController < ApplicationController

  def index
    @moorings = Mooring.all
    @moorings = Mooring.where.not(latitude: nil, longitude: nil)

    @markers = [{
        lat: 51.506158,
        lng: -0.087024 }]


    # @moorings.map do |mooring|
    #   {
    #     lat: mooring.latitude,
    #     lng: mooring.longitude#,
    #     # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
    #   }
    # end
  end

  def show
    @booking = Booking.new
    @mooring = Mooring.find(params[:id])
  end

end
