class CustomersController < ApplicationController
  def index
    @customers = Customer.all.order("created_at DESC")
  end

  def show
    @customer = Customer.find(params[:id])
    @posts = @customer.posts
  end
end
