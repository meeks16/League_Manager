LeagueManager::Application.routes.draw do
  
  devise_for :users

  devise_scope :user do
  	get 'sign_up' => 'devise/sessions#new'
  end

  root :to => 'seasons#index'
  
  
  resources :matches

  resources :teams
  
  
  get 'home' => 'home#index'
  
  get 'sched' => 'matches#index'
  
  get 'standings' => 'teams#index'
  
  get 'contacts' => 'home#contact'
    
  
#   delete 'lines/:id', :controller => 'lines', :action => 'destroy', :as => 'train_line'
  
  put 'seasons/:id' => 'seasons#update'
  
  get 'seasons/:id/edit' => 'seasons#edit', :as => 'edit_season'
  
  post 'seasons' => 'seasons#create', :as => 'seasons'
  
  get 'seasons/new' => 'seasons#new', :as => 'new_season'
  
  get 'seasons' => 'seasons#index'
  
  get 'seasons/:id' => 'seasons#show', :as => 'season'
  
  get 'seasons/:id/standings' => 'season_teams#standing', :as => 'standings'
  
  get 'seasons/:season_id/season_teams/:id' => 'season_teams#show', :as => 'season_season_team'
  
  get 'seasons/:id/schedule' => 'matches#index', :as => 'schedule'
  
  get 'seasons/:season_id/match/:id' => 'matches#show', :as => 'season_match'
end
