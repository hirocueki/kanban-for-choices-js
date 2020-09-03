Rails.application.routes.draw do
  root to: 'boards#index'
  resources :boards do
    resources :tasks
  end
end
