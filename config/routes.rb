Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :accounts
  as :account do
    get 'accounts/edit' => 'devise/registrations#edit', :as => 'edit_account_registration'
    put 'accounts' => 'devise/registrations#update', :as => 'account_registration'
  end


  resources :admin

  resources :categories , except: [:show,:index]

  get 'top/index'
  get 'top/', to: 'top#index'
  get 'top/:id', to: 'top#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end