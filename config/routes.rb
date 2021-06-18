Rails.application.routes.draw do
  resources :notes
  resources :days
  resources :calendars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
