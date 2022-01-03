class BooksController < ApplicationController
  def top
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to '/books'
    else
      render :index
    end
  end

  def edit
  end

  private

    def book_params
      params.require(:book).permit(:title, :body)
    end

end
