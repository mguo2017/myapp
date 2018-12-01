Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  resources :registrations
  resources :registratioins, :has_many => [ :upload]
  #resources :controller/:action/:id
  #GET :controller/:action/:id(.:format)
  
end
