Rails.application.routes.draw do
  resources :character_goals
  resources :character_notes
  resources :character_notebooks
  resources :game_master_notes
  resources :game_master_notebooks
  resources :game_players
  resources :users
  resources :games
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
