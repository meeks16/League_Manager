LeagueManager::Application.routes.draw do
  
  devise_for :users

  devise_scope :user do
  	get 'sign_up' => 'devise/sessions#new'
  end

  root :to => 'teams#index'
  
  resources :schedules

  resources :teams
  
  get 'home' => 'home#index'
  
  get 'sched' => 'schedules#index'
  
  get 'standings' => 'teams#index'
  
  get 'contacts' => 'temps#contact'
    
  
#   delete 'lines/:id', :controller => 'lines', :action => 'destroy', :as => 'train_line'
  
  put 'seasons/:id' => 'seasons#update'
  
  get 'seasons/:id/edit' => 'seasons#edit', :as => 'edit_season'
  
  post 'seasons' => 'seasons#create'# , :as => 'train_lines'
  
  get 'seasons/new' => 'seasons#new', :as => 'new_season'
  
  get 'seasons' => 'seasons#index'
  
  get 'seasons/:id' => 'seasons#show', :as => 'season'
  
  
  
end
