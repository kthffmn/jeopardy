Rails.application.routes.draw do

  root to: 'static_pages#home'

  get '/auth/facebook', :as => 'login'

  get '/auth/facebook/callback' => 'sessions#create'

  delete 'logout' => 'sessions#destroy', :as => 'log_out'

  resources :games, :only => [:new, :show]
end
