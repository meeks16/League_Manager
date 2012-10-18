LeagueManager::Application.routes.draw do
  
  root :to => 'temps#sched'
  
  resources :schedules

  resources :teams
  
  get 'sched' => 'temps#sched'
  
  get 'standings' => 'temps#standing'
  
end
