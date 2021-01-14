Rails.application.routes.draw do
  resources :favorites
  resources :cart_pieces
  resources :art_pieces
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
