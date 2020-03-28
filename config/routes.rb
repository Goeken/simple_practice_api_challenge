Rails.application.routes.draw do
  resources :offices
  resources :clinicians
  resources :cpt_codes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
