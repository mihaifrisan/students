Students::Application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :students do
    resources :courses
  end
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
end
