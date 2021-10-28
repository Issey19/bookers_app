Rails.application.routes.draw do
  get 'top' => 'homes#top'
  resources :books
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books' => 'books#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
