Rails.application.routes.draw do

  # root route

  root 'demo#index'

  get 'demo/index'

  get 'demo/about'

  get 'demo/contact'

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  # default route
  get ':controller(/:action(/:id))'
end
