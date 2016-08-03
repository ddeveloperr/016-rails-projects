class SearchesController < ApplicationController
  # creates a new record in the "searches" table
  def new
	@search = Search.new
  end
  
  # action creates a new path and redirects the user to that path
  def create
	@search = Search.create(search_params)
	redirect_to @search
  end
  
  # finds a user by its id
  def show
	@search = Search.find(params[:id])
  end

  private
  
  # accesses the model's attributes and sends them as arguments to the create action
  def search_params
	params.require(:search).permit(:keywords, :category, :min_price, :max_price, :isbn)
  end
end
