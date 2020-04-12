Rails.application.routes.draw do
  resources :teams, only: %i[index create show update]
end
