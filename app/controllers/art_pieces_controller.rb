class ArtPiecesController < ApplicationController

    def index
        @art_pieces = ArtPiece.all 
        render json: @art_pieces
    end

    def show
        @art_piece = ArtPiece.find(params[:id])
        render json: @art_piece
    end

    def create
        @art_piece = ArtPiece.new(art_piece_params)
        if @art_piece.save
            render json: @art_piece
        end
    end

    def update
        
    end

    private

    def art_piece_params
        params.permit(:name, :creator_name, :description, :img_url, :owned)
    end

end
