class FavoritesController < ApplicationController

    before_action :authorized, only: [:create, :destroy]


    def index
        @favorites = Favorite.where('user_id=?', current_user.id)
        render json: @favorites
    end

    def create 
        @favorite = Favorite.new(favorite_params)
        if @favorite.save
            render json: @favorite
        else
            render json: {error: 'Must be signed in to favorite'}
        end
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
    end


    private

    def favorite_params
        params.require(:favorite).permit(:art_piece_id, :user_id)
    end

end
