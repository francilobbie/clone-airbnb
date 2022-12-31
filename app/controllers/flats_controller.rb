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

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user

    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)

    redirect_to flat_path(@flat)
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :address, :price, :photo)
  end
end
