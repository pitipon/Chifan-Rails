Rails.application.routes.draw do
  # root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: [ :index, :show, :update, :create, :destroy ] do
        resources :comments, only: [:index, :create]
      end

      resources :comments, only: [:show, :update, :destroy]
    end
  end

end
