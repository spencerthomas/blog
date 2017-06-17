Rails.application.routes.draw do
  get 'pages/About'

  get 'pages/Contact'

  get 'pages/Projects'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "articles#index"
end
