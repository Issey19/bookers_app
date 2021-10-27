class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end


  def create
  @book = Book.new
  @book.assign_attributes(book_params)
  redirect_to books_path
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

  def destroy
  @book = Book.find(params[:id])
  @book.destroy!
  redirect_to action: :index
  end

  def edit
    @book = Book.find(params[:id])
  end



private

def book_params
  params.require(:book,).permit(
      :title,
      :body,
  )
end

end