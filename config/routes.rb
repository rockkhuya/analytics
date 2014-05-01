Rails.application.routes.draw do
  devise_for :admins
  # Canvas App
  resource :canvas, :only => [:show, :create]
  resource :credit, :only => :create
  resources :achievements, :only => [:index, :show, :new, :create]

  # Connect Site
  resource :facebook, :except => :create do
    get :callback, :to => :create
  end
  resource :dashboard, :only => :show
  resource :profile, :only => :show
  resource :timeline, :only => [:show, :create]
  resources :subscriptions, :only => [:index, :show, :create]
  post 'subscriptions/:id', :to => 'subscriptions#update'

  get 'test/bootstrap'
  get 'test/bootswatch'

  root 'welcome#index'
end
