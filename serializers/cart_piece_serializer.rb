class CartPieceSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :art_piece_id
    has_one :user
    has_one :art_piece
end