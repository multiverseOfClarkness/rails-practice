Rails.application.routes.draw do
  root "articles#index"
  
  get 'articles', to: 'articles#article'
  
  

  resources :articles do
    resources :comments
  end
end



