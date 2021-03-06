Rails.application.routes.draw do
  get '/admins' => 'admins#index'
  scope "/admins" do
    get '/users' => 'users#index'

    resources :lops do
      resources :khoanphiphaithus
      resources :taisanlops
      resources :students
      resources :phanconggiangdays
    end
    resources :departments
    resources :employments
  end
  mount Ckeditor::Engine => '/ckeditor'
  resources :news
  devise_for :users, :controllers => {registrations: 'registrations' }
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

end
