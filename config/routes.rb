Rails.application.routes.draw do
  
  devise_for :users
  get '/' => 'home#top'
  get 'home/about' => 'home#about'
  resources :posts, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
  end
  
end
