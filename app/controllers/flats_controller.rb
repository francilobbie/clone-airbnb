class FlatsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR address ILIKE :query OR description ILIKE :query"
      @flats = Flat.where(sql_query, query: "%#{params[:query]}%")
    else
      @flats = Flat.all
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end
end
