Rails.application.routes.draw do
  devise_for :admins
  # Connect Site
  resource :facebook, :except => :create do
    get :callback, :to => :create
  end

  resource :welcome, controller: "welcome", only: [:index] do
    get :analytics
  end

  root 'welcome#index'
end
