LeagueManager::Application.routes.draw do
  
  resources :schedules

  resources :teams
  
  get 'tempscheds' => 'tempscheds#index' 

end
