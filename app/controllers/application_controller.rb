class ApplicationController < Sinatra::Base
  
  # Add routes here
  get "/books" do 
    Book.all.to_json
  end  
end
