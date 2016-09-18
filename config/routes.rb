Rails.application.routes.draw do
  resources :episodes
  resources :shows
  resources :movies
  resources :videos
  resources :sources
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
