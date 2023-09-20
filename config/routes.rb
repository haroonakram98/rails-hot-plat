Rails.application.routes.draw do
  devise_for :users
  get 'home/landing_page'
  get 'home/about'
  get 'home/contact_us'
  get 'home/faq'
  get 'home/privacy_policy'
  get 'home/cookies_policy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
