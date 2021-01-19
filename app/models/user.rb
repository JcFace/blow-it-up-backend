class User < ApplicationRecord
    has_many :cart_pieces
    has_many :favorites
    has_many :art_pieces, through: :favorites
    has_many :art_pieces, through: :cart_pieces
    has_secure_password

    validates :email, uniqueness: :true, :email_format => {message: 'Wrong Data'}
end
