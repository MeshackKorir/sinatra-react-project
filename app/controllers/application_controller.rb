class ApplicationController < Sinatra::Base
  
  # Add routes here
  # books
  get "/books" do 
    Book.all.to_json
  end  

  post "/books" do
    book = Book.create(
      name: params[:name],
      author: params[:author],
      quantity: params[:quantity],
      price: params[:price],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    user.to_json
  end

  patch "/books/:id" do
    book = Book.find(params[:id])
    user.update(
      name: params[:name],
      author: params[:author],
      quantity: params[:quantity],
      price: params[:price],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    book.to_json
  end
end
