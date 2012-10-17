LeagueManager::Application.routes.draw do
  
  resources :schedules

  resources :teams
  
  get 'sched' => 'temps#sched' 
  
  get 'standings' => 'temps#standing'

end
