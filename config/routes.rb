Rails.application.routes.draw do
  devise_for :users
  mount ActionCable.server => '/cable'

  root controller: :rooms, action: :index

  resources :room_messages
  resources :rooms
end
