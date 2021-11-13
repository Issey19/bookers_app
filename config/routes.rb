Rails.application.routes.draw do
  root to: 'homes#top'
  get 'books/new'
  get 'books' =>'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit'
  patch 'books/:id' => 'books#update', as: 'update'
  put 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'
 
  
  
end
