class UsersController < ApplicationController
  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end
  
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
    @books = Book.all
  end  
   
  def edit
    @user = User.find(params[:id])
  end
  
  def new
     @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    @user.user_id = current_user.id
    @user.save
    redirect_to user_path
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.save
    redirect_to user_path(@user.id)
  end
  
  private

   def user_params
    params.require(:user).permit(:name, :post_image_id, :introduction)
   end
     
end
