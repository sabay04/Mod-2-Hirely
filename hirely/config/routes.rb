Rails.application.routes.draw do
  resources :item_reviews
  resources :hires
  resources :items
  resources :users
  root 'mains#index'
  get 'main_menu', to: 'mains#main_menu', as: 'menu'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
