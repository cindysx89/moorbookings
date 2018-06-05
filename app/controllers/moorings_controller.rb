class MooringsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index

    # @moorings = Mooring.where.not(latitude: nil, longitude: nil)
      if params[:query].present?
        @moorings = Mooring.where("name ILIKE ?", "%#{params[:query]}%")
      else
        @moorings = Mooring.all
      end
    @markers = @moorings.map do |mooring|

      {
        lat: mooring.latitude,
        lng: mooring.longitude,
        infoWindow: { content: render_to_string(partial: "/moorings/moorings", locals: { mooring: mooring }) }
      }

    end

    @amenities = Amenity.all
    @amenities.each do |amenity|
      icon = { url: ActionController::Base.helpers.asset_path("marker.png") }
      @markers << {
        lat: amenity.latitude,
        lng: amenity.longitude,
        icon: icon,
        infoWindow: { content: render_to_string(partial: "/moorings/amenities", locals: { amenity: amenity }) },

      }
    end
  end


  def show
    @booking = Booking.new
    @mooring = Mooring.find(params[:id])
  end

end
