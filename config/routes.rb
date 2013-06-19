LeagueManager::Application.routes.draw do
  
  devise_for :users

  devise_scope :user do
  	get 'sign_up' => 'devise/sessions#new'
  end

  root :to => 'teams#index'
  
  resources :schedules

  resources :teams
  
  get 'sched' => 'temps#sched'
  
  get 'standings' => 'temps#standing'
  
  get 'contacts' => 'temps#contact'
  
  
  
  
end
