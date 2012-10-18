LeagueManager::Application.routes.draw do
  
  resources :schedules

  resources :teams
  
  get 'sched' => 'temps#sched', :as => temporary_schedules  
  
  get 'standings' => 'temps#standing', :as => temporary_standings
  
end
