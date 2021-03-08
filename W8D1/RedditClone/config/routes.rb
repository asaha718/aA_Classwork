Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :destroy, :index, :show] do 
    resource :subs, only: [:edit]
  end

  resources :subs, only: [:new, :create, :update, :index, :show]


  resource :session, only:[:new, :create, :destroy]
end
