Rails.application.routes.draw do
  resources :tuits
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "tuits#index"
end
