Rails.application.routes.draw do

  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  delete "doses/:id", to: "doses#destroy", as: :destroy
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
end
