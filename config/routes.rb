Rails.application.routes.draw do
  resources :cocktails, only: %i[index show new create destroy] do
    resources :doses, only: %i[new create]
    resources :reviews, only: [:create]
  end
  delete '/doses/:id', to: 'doses#destroy', as: 'dose'
  root 'cocktails#index'
end
