module Api
  class FavoritesController < ApplicationController
    before_action :authenticate_user!
    def index
      @favorites = Favorite.all
      render json: @favorites
    end

    def create
      @favorite = Favorite.new(favorite_params)
      @favorite.user = current_user
      @favorite.save
      render json: @favorite, status: :created
    end

    def destroy
      @favorite = Favorite.find(params[:id])
      @favorite.destroy
      render json: @favorite, status: 204
    end

    private

    def favorite_params
      params.require(:favorite).permit(:user_id, :flat_id)
    end
  end
end
