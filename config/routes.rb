Rails.application.routes.draw do
  root 'chats#index'

  get'prison', to: 'chats#prison'

  resources :chats

end
