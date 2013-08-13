Music::Application.routes.draw do
  resources :bands
  resources :notes , :only => [:create, :destroy]
  resources :albums do
    resources :tracks
  end
  resources :users
  resource :session
end
