Rails.application.routes.draw do
  resources :character_goals
  resources :character_notes
  resources :character_notebooks
  resources :game_master_notes
  resources :game_master_notebooks
  resources :game_players
  resources :users
  resources :games
  namespace :api do
    namespace :v1 do
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
end
