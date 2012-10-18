LeagueManager::Application.routes.draw do
  
  root :to => 'sched'
  
  resources :schedules

  resources :teams
  
  get 'sched' => 'temps#sched'
  
  get 'standings' => 'temps#standing'
  
end
