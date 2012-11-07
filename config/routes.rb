LeagueManager::Application.routes.draw do
  
  resources :users

  resources :schedules

  resources :teams
  
  get 'sched' => 'temps#sched'
  
  get 'standings' => 'temps#standing'
  
end
