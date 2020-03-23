Rails.application.routes.draw do

  root "pages#index"
  
  resources :missions
  


end
