require_relative "../models/book"
require_relative "../models/user"

class ApplicationController < Sinatra::Base
  # Add routes here

  # Root route
  get "/" do
    "Hello, welcome!"
  end

  # Books routes
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

  # Users routes
  get "/users" do
    users = User.all
    users.to_json
  end

  post "/users" do
    user = User.create(
      name: params[:name],
      user_id: params[:user_id],
      age: params[:age]
    )
    user.to_json
  end

  patch "/users/:id" do
    user = User.find(params[:id])
    user.update(
      name: params[:name],
      user_id: params[:user_id],
      age: params[:age]
    )
    user.to_json
  end

  delete "/users/:id" do
    user = User.find(params[:id])
    user.destroy
    "User deleted successfully"
  end
end
