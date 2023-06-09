require_relative "book"
require_relative "user"

class ApplicationController < Sinatra::Base
  
  # Add routes here
  # books

  get "/books" do 
    books = Book.all
    books.to_json
  end
  
  post "/books" do
    book = Book.create(
      name: params[:name],
      author: params[:author],
      quantity: params[:quantity],
      price: params[:price]
    )
    book.to_json
  end

  patch "/books/:id" do
    book = Book.find(params[:id])
    book.update(
      name: params[:name],
      author: params[:author],
      quantity: params[:quantity],
      price: params[:price]
    )
    book.to_json
  end

  delete "/books/:id" do
    book = Book.find(params[:id])
    book.destroy
    "Book deleted successfully"
  end
  end
end

