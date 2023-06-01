Rails.application.routes.draw do
  root 'tops#top'

  get 'saikyouni_omoroi_app', to:'tops#saikyouni_omoroi_app'

  get 'prison', to: 'calorie_counter/chats#prison'
  get 'purgatory', to: 'calorie_counter/chats#purgatory'
  get '/path/to/mercy', to: 'calorie_counter/chats#mercy'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  get 'logout', to: 'user_sessions#destroy'

  post 'select_theme', to: 'themes#select'


  namespace :calorie_counter do
    resources :chats
  end
  namespace :pomodoro_timer do
    resources :timers
  end
  resources :users
end