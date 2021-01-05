class ArtPiecesController < ApplicationController

    def index
        art_pieces = ArtPiece.all 
        render json: art_pieces, only: [:name, :price, :img_url], include: {user: {only: :username}}
    end


end
