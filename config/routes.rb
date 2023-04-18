Rails.application.routes.draw do
  root "articles#index"
  
  get 'articles', to: 'articles#article_page'
  
  

  resources :articles do
    resources :comments
  end
end



