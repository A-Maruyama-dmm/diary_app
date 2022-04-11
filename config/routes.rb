Rails.application.routes.draw do
  
  devise_for :users
  get '/' => 'home#top'
  get 'home/about' => 'home#about'
  post 'posts/new' => 'posts#new'
  resources :posts, only: [:create, :index, :show, :destroy, :edit, :update] 
  
end
