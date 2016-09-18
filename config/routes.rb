Rails.application.routes.draw do
  jsonapi_resources :episodes
  jsonapi_resources :shows
  jsonapi_resources :movies
  jsonapi_resources :videos
  jsonapi_resources :sources
end
