LeagueManager::Application.routes.draw do
  
  resources :schedules

  resources :teams
  
  get 'sched', 	:controller => 'temps', 
  				:action => 'sched' 
  
  get 'standings' => 'temps#standing'

end
