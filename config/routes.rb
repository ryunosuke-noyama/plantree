Rails.application.routes.draw do
  devise_for :users
  root to: "companies#index"
  resources :companies, only: [:index, :new, :create, :show] do
    resources :teams, only: [:new, :create, :show]
    resources :members, only: [:new, :create, :show]
  end
  #get       'companies_with_password/:id', to: 'companies#companies_with_password'
  #post      'companies_with_password/:id', to: 'companies#authenticate'
end
