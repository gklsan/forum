Forum::Application.routes.draw do
  
  devise_for :users
  resources :posts do
  		resources :comments
   end

  resources :posts
  root :to => 'posts#index'
end
