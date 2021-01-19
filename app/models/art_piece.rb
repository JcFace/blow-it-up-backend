class ArtPiece < ApplicationRecord
  has_many :favorites
  has_many :cart_pieces
  has_many :users, through: :cart_pieces
  has_many :users, through: :favorites
end
