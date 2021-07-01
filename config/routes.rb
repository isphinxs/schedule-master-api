Rails.application.routes.draw do
  resources :notes, only: [:show, :create, :update, :destroy]
  resources :calendars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
