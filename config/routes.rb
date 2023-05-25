Rails.application.routes.draw do
  root 'chats#index'

  resources :chats
end
