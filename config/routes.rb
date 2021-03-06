GPXtra::Application.routes.draw do
  devise_for :users 
  resources :workouts, :only => [:index, :show, :create, :update, :destroy, :new]
  resources :follows, :only => [:create, :destroy]
  resources :users, :only => [:index]
  root :to => 'root#root'
end
