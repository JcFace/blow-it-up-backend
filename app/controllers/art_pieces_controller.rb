class ArtPiecesController < ApplicationController

    def index
        @art_pieces = ArtPiece.all 
        render json: @art_pieces
    end


end
