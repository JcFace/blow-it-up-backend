class UserSerializer < ActiveModel::Serializer
    attributes :id, :full_name, :username, :email, :is_client, :bio, :img_url, :lat, :lng
    has_many :cart_pieces
    has_many :favorites
end