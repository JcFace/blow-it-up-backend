class ArtPieceSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :img_url, :creator_name, :price, :owned
    has_many :favorites
    has_many :cart_pieces
end