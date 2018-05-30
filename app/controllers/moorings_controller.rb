class MooringsController < ApplicationController

  def index
    @moorings = Mooring.all
    @moorings = Mooring.where.not(latitude: nil, longitude: nil)

    @markers = @moorings.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @booking = Booking.new
    @mooring = Mooring.find(params[:id])
  end

end
