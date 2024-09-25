Rails.application.routes.draw do
  resources :products
  resources :users
  get 'dialogs/welcome'
  get 'dialogs/first_meet'
  get 'dialogs/after_first_meet'
  get 'dialogs/ask_about_age'
  get 'dialogs/after_ask_about_age'
  get 'dialogs/date_info'


  
  get 'welcome/start'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
