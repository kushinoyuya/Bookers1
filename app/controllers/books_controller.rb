class BooksController < ApplicationController
# TOPページ
  def top	
  end

# indexページ
  def index
  	@book = Book.new
  	@books = Book.all
  end

  def create
  	# ストロングパラメータ使用
  	book = Book.new(book_params)
  	# DBに保存
  	book.save
  	# TOP画面にリダイレクト
  	redirect_to book_path(book)
  end

 #Showページ
  def show
  	@book = Book.find(params[:id])
  end

#Editページ
  def edit
  	@book = Book.find(params[:id])
  end

#削除機能
  def destroy
  	@book = Book.find(params[:id])
  	@book.destroy
  	redirect_to books_path
  end

#更新機能
	def update
	 @book = Book.find(params[:id])
	 @book.update(book_params)
	 redirect_to book_path(@book)
	end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end

end
