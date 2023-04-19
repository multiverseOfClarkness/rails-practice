Rails.application.routes.draw do
  devise_for :users
  root "articles#index"
  
  get 'articles', to: 'articles#article_page'
  
  resources :devise

  resources :articles do
    resources :comments
  end
end



