class FlatsController < ApplicationController

  def index
    if params[:query].present?
      @flats = Flat.where("title ILIKE ?", "%#{params[:query]}%")
    else
    @flats = Flat.all
    end
    @flats = Flat.where.not(latitude: nil, longitude: nil)
    @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        # Uncomment the above line if you want each of your markers to display a info window when clicked
        # (you will also need to create the partial "/flats/map_box")
      }
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end
end
