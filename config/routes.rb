Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'tweets/new', to: 'tweets#new'
  # get 'tweets', to: 'tweets#index'
  # get 'tweets/:tweet_id', to: 'tweets/show'

  resources :tweets
  
end
