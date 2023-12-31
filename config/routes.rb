Rails.application.routes.draw do
  devise_for :managers
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
    
  }
  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :admin do
    resources :items, only: [:new, :index, :show, :create, :destory]
    resources :managers, only: [:new, :index, :create]
  end
  
  namespace :public do
    resources :items, only: [:new, :index, :create]
  end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
