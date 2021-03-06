Rails.application.routes.draw do
  resources :restaurants, except: [:destroy, :update] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:show, :edit, :update, :delete, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
