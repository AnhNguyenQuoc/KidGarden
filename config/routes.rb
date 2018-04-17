Rails.application.routes.draw do

  resources :nhansus
  resources :lops
  get 'departments/index'

  mount Ckeditor::Engine => '/ckeditor'
  resources :news
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'
  devise_scope :user do
    get '/sign_up' => 'devise/registrations#new'
    get '/edit' => 'devise/registrations#edit'
    get '/login'  => 'devise/sessions#create'
    get '/logout' => 'devise/sessions#destroy'
    get '/forget_password' => 'devise/passwords#new'
    get '/new_password' => 'devise/passwords#edit'
  end
  resources :departments
end
