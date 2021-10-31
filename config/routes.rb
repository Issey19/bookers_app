Rails.application.routes.draw do
  get 'top' => 'homes#top'
  get 'books/new'
  
  get 'books/index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books' => 'books#index'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  
  
end
