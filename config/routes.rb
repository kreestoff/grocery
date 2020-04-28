Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get "sign_out", to: "devise/sessions#destroy"
  end

  # Forward all requests to UsersController#react_root but requests
  # must be non-Ajax (!req.xhr?) and HTML Mime type (req.format.html?).
  # This does not include the root ('/') path.
  get '*page', to: 'users#react_root', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end

  root to: 'users#react_root'

  get 'users/show', to: 'users#show'

  get 'grocery_lists/:id/show', to: 'grocery_lists#show'
end
