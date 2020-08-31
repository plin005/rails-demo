Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome/index' 
  root 'welcome#index'

  # This creates comments as a nested resource within articles. 
  #  This is another part of capturing the hierarchical(分层的) relationship that exists between articles and comments.
  resources :articles do
    resources :comments
  end
end
