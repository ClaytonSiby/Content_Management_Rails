Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/show'
  get 'pages/new'
  get 'pages/edit'
  get 'pages/delete'
  get 'subjects/index'
  get 'subjects/show'
  get 'subjects/new'
  get 'subjects/edit'
  get 'subjects/delete'
  # root route

  root 'demo#index'

  get 'demo/index'

  get 'demo/about'

  get 'demo/contact'

  # default route
  get ':controller(/:action(/:id))'
end
