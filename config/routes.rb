Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :homes, only: [:index, :show, :create]
    resources :reviews, except: [:new, :show, :edit]
  end
  
  root "static_pages#root"
end
