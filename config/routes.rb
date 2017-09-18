Rails.application.routes.draw do
  resources :cities do
    member do
      get 'check_updates'
    end
  end
  resources :beacons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
