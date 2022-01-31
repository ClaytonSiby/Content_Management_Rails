Rails.application.routes.draw do
  # root route

  root 'demo#index'

  get 'demo/index'

  # default route
  get ':controller(/:action(/:id))'
end
