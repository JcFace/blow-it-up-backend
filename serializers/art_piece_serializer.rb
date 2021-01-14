class ArtPieceSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :img_url, :creator_name, :price, :user_id
    has_many :favorites
    has_many :cart_pieces
end