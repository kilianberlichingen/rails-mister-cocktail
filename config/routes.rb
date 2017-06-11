Rails.application.routes.draw do
  root to: "cocktails#index"
  mount Attachinary::Engine => "/attachinary"
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  delete "doses/:id", to: "doses#destroy", as: :destroy
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
