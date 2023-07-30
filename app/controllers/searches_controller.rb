class SearchesController < ApplicationController

  before_action :authenticate_user!

  def search
    @range = params[:range]
    @book = Book.find(params[:id])
    @user = @book.user
    if @range == "User"
      @users = User.looks(params[:search], params[:word])
    else
      @books = Book.looks(params[:search], params[:word])
    end
  end

end
