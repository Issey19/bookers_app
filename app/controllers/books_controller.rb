class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path(book.id)
  
  def show
   @book = Book.find(params[:id])
  end

 def edit
  @book = Book.find(params[:id])
  @book.assign_attributes(book_params) 
  if @book.valid?
    @book.save!
    redirect_to action: :index
  else
    @books = Book.all
    render action: :new
  end
 end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(list.id)
  end

　def destroy
   @book = Book.find(params[:id])
   @book.destroy!
   redirect_to action: :index
  end


private

 def book_params
  params.require(:book,).permit(
      :title,
      :body,
  )
 end


end