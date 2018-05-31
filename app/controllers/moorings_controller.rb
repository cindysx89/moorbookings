class MooringsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @moorings = Mooring.all
    @moorings = Mooring.where.not(latitude: nil, longitu
    @markers = @moorings.map do |mooring|
      {
        lat: mooring.latitude,
        lng: mooring.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @booking = Booking.new
    @mooring = Mooring.find(params[:id])
  end

end
