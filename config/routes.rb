Rails.application.routes.draw do
  # root route

  root 'demo#index'

  get 'demo/index'

  get 'demo/about'

  get 'demo/contact'

  # default route
  get ':controller(/:action(/:id))'
end
