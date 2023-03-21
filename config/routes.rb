Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :books
    end
  end
  # root "articles#index"
end
