class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end

  def create
    @title = request.POST["title"]
    @author = request.POST["author"]
    @date_published = request.POST["date_published"]

    @book = Book.create({title: @title, author: @author, date_published: @date_published})

    redirect_to index
  end

  def show
    @book = Book.find(params['id'])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
