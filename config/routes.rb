Students::Application.routes.draw do
  resources :students do
    resources :courses
  end
end
