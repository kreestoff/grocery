Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get "sign_out", to: "devise/sessions#destroy"
  end

  root to: 'users#react_root'

  get 'users/:id/show', to: 'users#show'

  get 'grocery_lists/:id/show', to: 'grocery_lists#show'
end
