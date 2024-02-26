Rails.application.routes.draw do
  resources :courses
  devise_for :users
  resources :subscriptions, only: :create do
    collection do
      get :my_subscriptions
    end
  end

  get :my_courses , to: "instructors#my_courses", as: :my_courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "courses#index"
end
