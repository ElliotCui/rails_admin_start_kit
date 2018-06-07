Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root :to => "admin/super_users#index"

  namespace :admin do
    root :to => "super_users#index"

    resources :super_users do
      member do
        post :reset_password
      end
    end
  end
end
