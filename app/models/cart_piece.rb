class CartPiece < ApplicationRecord
  belongs_to :user
  belongs_to :art_piece
end
