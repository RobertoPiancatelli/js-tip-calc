Rails.application.routes.draw do
  root to: 'calculators#index'
  resources :calculators
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
