class BooksController < ApplicationController
  def new
  end

  def create
  end 

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
    @book_show = Book.find(params[:id])
    @book = Book.new
    @user = @book_show.user
  end
  
  def edit
    @book = Book.find(params[:id])
  end

  def destroy
  end
end
